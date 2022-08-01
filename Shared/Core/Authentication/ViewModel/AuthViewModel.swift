//
//  AuthViewModel.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI
import Firebase
import CoreMIDI

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var didAuthenticateUser = false
    @Published var currentUser: User?
    @Published var products: [Product] = []
    private var tempUserSession: FirebaseAuth.User?
    
    private let service = UserService()
    
    init() {
        self.userSession = Auth.auth().currentUser
        self.fetchUser()
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to sign in with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            self.fetchUser()
            self.fetchData()
        }
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.tempUserSession = user
            
            let data = ["email": email,
                        "username": username.lowercased(),
                        "fullname": fullname,
                        "uid": user.uid]
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.didAuthenticateUser = true
                }
        }
    }
    
    func fetchData() {
        let db = Firestore.firestore()
        
        db.collection("products").getDocuments { (snap, err) in
            guard let prodData = snap else { return }
            self.products = prodData.documents.compactMap({ (doc) -> Product? in
                let imageName = doc.get("imageName") as! String
                let client = doc.get("client") as! String
                let itemName = doc.get("itemName") as! String
                let price = doc.get("price") as! NSNumber
                let quantity = doc.get("quantity") as! String
                let qType = doc.get("qType") as! Bool
                let amount = doc.get("amount") as! NSNumber
                
                return Product(imageName: imageName, client: client, itemName: itemName, price: Int(truncating: price), quantity: quantity, qType: qType, amount: Int(truncating: amount))
            })
        }
    }
    
    
    func signOut() {
        userSession = nil
        
        try? Auth.auth().signOut()
    }
    
    func fetchUser() {
        guard let uid = self.userSession?.uid else { return }
        
        service.fetchUser(withUid: uid) { user in
            self.currentUser = user
        }
    }
}

