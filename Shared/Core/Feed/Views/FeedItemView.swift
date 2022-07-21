//
//  FeedItemView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/21/22.
//

import SwiftUI

struct FeedItemView: View {
    let imageName: String
    let client: String
    let itemName: String
    let price: Int
    let quantity: String
    let qType: Bool
    
    @State private var showAddItemView = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                showAddItemView.toggle()
            } label: {
                Image(imageName)
                    .resizable()
                    .frame(width:220, height:218)
                    .scaledToFill()
                    .offset(x: 4)
            }
            Text(client.uppercased())
                .font(.subheadline)
                .foregroundColor(.gray)
                .offset(x: 10)
            Text(itemName)
                .font(.subheadline)
                .foregroundColor(.black)
                .offset(x: 10)
            HStack {
                Text("$\(price)")
                    .font(.subheadline)
                    .offset(x: 10)
                Spacer()
                Text(quantity)
                if qType{
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                }
            }
            .fullScreenCover(isPresented: $showAddItemView) {
                AddItemView(imageName: imageName, client: client, itemName: itemName, price: price, quantity: quantity, qType: qType)
            }
        }
    }
}

struct FeedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeedItemView(imageName: "chorizo", client: "cofax", itemName: "Chorizo Burrito", price: 14, quantity: "1", qType: true)
    }
}
