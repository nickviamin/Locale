//
//  ProductService.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 8/1/22.
//

import Foundation
import Firebase

struct ProductService {
    func fetchProds(completion: @escaping([Product]) -> Void) {
        Firestore.firestore().collection("products")
            .getDocuments { snapshot, _ in
                guard let documents = snapshot?.documents else { return }
                let products = documents.compactMap({ try? $0.data(as: Product.self) })
                completion(products)
        }
    }
}

