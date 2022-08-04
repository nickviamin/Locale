//
//  FeedItemView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/21/22.
//

import SwiftUI
import Kingfisher

struct FeedItemView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    var product: Product
    
    @State private var showAddItemView = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                showAddItemView.toggle()
            } label: {
                //Image(product.imageName)
                KFImage(URL(string: product.imageName))
                    .resizable()
                    .frame(width:220, height:218)
                    .clipped()
                    .aspectRatio(contentMode: .fill)
                    .scaledToFill()
                    .offset(x: 4)
            }
            Text(product.client.uppercased())
                .font(.subheadline)
                .foregroundColor(.gray)
                .offset(x: 10)
            Text(product.itemName)
                .font(.subheadline)
                .foregroundColor(.black)
                .offset(x: 10)
            HStack {
                Text("$\(product.price)")
                    .font(.subheadline)
                    .offset(x: 10)
                Spacer()
                Text(product.quantity)
                if product.qType{
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                }
            }
            .fullScreenCover(isPresented: $showAddItemView) {
                AddItemView(product: product)
            }
        }
    }
}

struct FeedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeedItemView(product: Product(imageName: "chorizo", client: "cofax", itemName: "Chorizo Burrito", price: 14, quantity: "1", qType: true))
            .environmentObject(CartViewModel())
    }
}

