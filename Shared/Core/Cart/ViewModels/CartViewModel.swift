//
//  CartViewModel.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/7/23.
//

import Foundation

class CartViewModel: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product, changedAmount: Int) {
        for _ in 0..<changedAmount {
            products.append(product)
        }
        total += product.price * changedAmount
    }
    
    func removeFromCart(product: Product) {
        for i in 0..<products.count {
            if products[i].id == product.id {
                products.remove(at: i)
                total -= product.price
                break
            }
        }
    }
}
