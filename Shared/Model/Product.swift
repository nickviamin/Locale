//
//  Product.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/23/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    let imageName: String
    let client: String
    let itemName: String
    let price: Int
    let quantity: String
    let qType: Bool
    var amount: Int
}
var productList = [Product(imageName: "chorizo", client: "cofax", itemName: "Chorizo Burrito", price: 14, quantity: "1", qType: true, amount: 1),
                   Product(imageName: "veggie", client: "cofax", itemName: "Veggie Burrito", price: 17, quantity: "1", qType: true, amount: 1),
                   Product(imageName: "bacon", client: "cofax", itemName: "Bacon Burrito", price: 17, quantity: "1", qType: true, amount: 1),
                   Product(imageName: "peaches", client: "frog hollow farms", itemName: "Organic Flavor Crest Peaches", price: 12, quantity: "1", qType: true, amount: 1),
                   Product(imageName: "pizza", client: "pizzeria delfina", itemName: "Funghi Pizza", price: 23, quantity: "2", qType: true, amount: 1),
                   Product(imageName: "italian", client: "oren's hummus", itemName: "Hummus Chicken Bowl Meal", price: 16, quantity: "1", qType: true, amount: 1),
                   Product(imageName: "granola", client: "manresa bread", itemName: "Almond Granola", price: 10, quantity: "8-10", qType: true, amount: 1),
                   Product(imageName: "bagels", client: "wise sons", itemName: "Plain Bagels", price: 8, quantity: "4 count", qType: false, amount: 1),
                   Product(imageName: "cheese", client: "cypress grove", itemName: "Purple Haze Goat Cheese", price: 8, quantity: "4 oz", qType: false, amount: 1),
                   Product(imageName: "tomato", client: "terra firma farm", itemName: "Organic Cherry Tomatoes", price: 8, quantity: "1 basket", qType: false, amount: 1),
                   Product(imageName: "milk", client: "strauss family creamery", itemName: "Organic Nonfat Milk", price: 5, quantity: "Half Gallon", qType: false, amount: 1),
                   Product(imageName: "strawbs", client: "live earth farms", itemName: "Organic Strawberries", price: 5, quantity: "1 clamshell", qType: false, amount: 1)]

/*
FeedItemView(imageName: "chorizo", client: "cofax", itemName: "Chorizo Burrito", price: 14, quantity: "1", qType: true)

FeedItemView(imageName: "veggie", client: "cofax", itemName: "Veggie Burrito", price: 17, quantity: "1", qType: true)

FeedItemView(imageName: "bacon", client: "cofax", itemName: "Bacon Burrito", price: 17, quantity: "1", qType: true)
Spacer()
    .frame(width: 0)
}
}
HStack {
Text("What's Hot This Week?")
.font(Font.custom(FontsManager.Fonts.trebBold, size: 30))
.offset(x: 4)
}
ScrollView(.horizontal, showsIndicators: false) {
HStack(spacing: 20) {
FeedItemView(imageName: "peaches", client: "frog hollow farms", itemName: "Organic Flavor Crest Peaches", price: 12, quantity: "1", qType: true)

FeedItemView(imageName: "pizza", client: "pizzeria delfina", itemName: "Funghi Pizza", price: 23, quantity: "2", qType: true)

FeedItemView(imageName: "italian", client: "oren's hummus", itemName: "Hummus Chicken Bowl Meal", price: 16, quantity: "1", qType: true)

FeedItemView(imageName: "granola", client: "manresa bread", itemName: "Almond Granola", price: 10, quantity: "8-10", qType: true)

FeedItemView(imageName: "bagels", client: "wise sons", itemName: "Plain Bagels", price: 8, quantity: "4 count", qType: false)

FeedItemView(imageName: "cheese", client: "cypress grove", itemName: "Purple Haze Goat Cheese", price: 8, quantity: "4 oz", qType: false)

FeedItemView(imageName: "tomato", client: "terra firma farm", itemName: "Organic Cherry Tomatoes", price: 8, quantity: "1 basket", qType: false)

FeedItemView(imageName: "milk", client: "strauss family creamery", itemName: "Organic Nonfat Milk", price: 5, quantity: "Half Gallon", qType: false)

FeedItemView(imageName: "strawbs", client: "live earth farms", itemName: "Organic Strawberries", price: 5, quantity: "1 clamshell", qType: false)
*/
