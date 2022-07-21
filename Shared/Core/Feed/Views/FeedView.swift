//
//  FeedView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            HStack(alignment: .top, spacing: 4) {
                Text("Shopping For: Bay Area")
                    .foregroundColor(.gray)
                    .font(.subheadline).bold()
                    .offset(x: 5)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "cart")
                        .offset(x: -20)
                        .foregroundColor(.gray)
                }
            }
            
            HStack(spacing: 7) {
                Text("Delivery On:")
                    .foregroundColor(.gray)
                    .font(.subheadline).bold()
                Button {
                    
                }label: {
                    Text("Tuesday, July 19th")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .frame(width: 138, height: 30)
                        .foregroundColor(.black)
                        .background(RoundedRectangle(cornerRadius: 20))
                        .foregroundColor(.gray)
                }
                Button {
                    
                }label: {
                    Text("Saturday, July 23rd")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .frame(width: 140, height: 30)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
                }

            }
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Locale Explorer")
                            .font(Font.custom(FontsManager.Fonts.treb, size: 30))
                            .offset(x: 4)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 4) {
                            FeedItemView(imageName: "chorizo", client: "cofax", itemName: "Chorizo Burrito", price: 14, quantity: "1", qType: true)
                            
                            FeedItemView(imageName: "veggie", client: "cofax", itemName: "Veggie Burrito", price: 17, quantity: "1", qType: true)
                            
                            FeedItemView(imageName: "bacon", client: "cofax", itemName: "Bacon Burrito", price: 17, quantity: "1", qType: true)
                        }
                    }
                    HStack {
                        Text("What's Hot This Week?")
                            .font(Font.custom(FontsManager.Fonts.treb, size: 30))
                            .offset(x: 4)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 4) {
                            FeedItemView(imageName: "peaches", client: "frog hollow farms", itemName: "Organic Flavor Crest Peaches", price: 12, quantity: "1", qType: true)
                            
                            FeedItemView(imageName: "pizza", client: "pizzeria delfina", itemName: "Funghi Pizza", price: 23, quantity: "2", qType: true)
                            
                            FeedItemView(imageName: "italian", client: "oren's hummus", itemName: "Hummus Chicken Bowl Meal", price: 16, quantity: "1", qType: true)
                            
                            FeedItemView(imageName: "granola", client: "manresa bread", itemName: "Almond Granola", price: 10, quantity: "8-10", qType: true)
                            
                            FeedItemView(imageName: "bagels", client: "wise sons", itemName: "Plain Bagels", price: 8, quantity: "4 count", qType: false)
                            
                            FeedItemView(imageName: "cheese", client: "cypress grove", itemName: "Purple Haze Goat Cheese", price: 8, quantity: "4 oz", qType: false)

                            FeedItemView(imageName: "tomato", client: "terra firma farm", itemName: "Organic Cherry Tomatos", price: 8, quantity: "1 basket", qType: false)

                            FeedItemView(imageName: "milk", client: "strauss family creamery", itemName: "Organic Nonfat Milk", price: 5, quantity: "Half Gallon", qType: false)

                            FeedItemView(imageName: "strawbs", client: "live earth farms", itemName: "Organic Strawberries", price: 5, quantity: "1 clamshell", qType: false)
                        }
                    }
                }
            }
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
