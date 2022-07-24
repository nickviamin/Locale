//
//  FeedItemView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/21/22.
//

import SwiftUI

struct FeedItemView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    var product: Product
    /*
    let imageName: String
    let client: String
    let itemName: String
    let price: Int
    let quantity: String
    let qType: Bool
     */
    
    @State private var showAddItemView = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                showAddItemView.toggle()
            } label: {
                Image(product.imageName)
                    .resizable()
                    .frame(width:220, height:218)
                    .aspectRatio(contentMode: .fit)
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
        FeedItemView(product: productList[0])
            .environmentObject(CartViewModel())
    }
}
