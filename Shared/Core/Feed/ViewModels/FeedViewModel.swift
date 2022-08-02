//
//  FeedViewModel.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import Foundation
import Firebase

enum FeedViewModel: Int, CaseIterable {
    
    case tuesday
    case saturday
    
    var title: String {
        switch self {
        case .tuesday: return "Tuesday"
        case .saturday: return "Saturday"
        }
    }
}

class FeedViewModelExtension: ObservableObject {
    @Published var products: [Product] = []
    @Published var featuredProducts: [Product] = []
    
    init() {
        fetchProducts()
        fetchFeaturedProducts()
    }
    func fetchProducts() {
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
    func fetchFeaturedProducts() {
        let db = Firestore.firestore()
        
        db.collection("featuredProducts").getDocuments { (snap, err) in
            guard let prodData = snap else { return }
            self.featuredProducts = prodData.documents.compactMap({ (doc) -> Product? in
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
}




