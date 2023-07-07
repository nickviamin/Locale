//
//  ProductRowView.swift
//  LastCall
//
//  Created by Nick Viamin on 7/7/23.
//

import SwiftUI
import Kingfisher

struct ProductRowView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    var product: Product
    var body: some View {
        HStack(spacing: 20){
            KFImage(URL(string: product.imageName))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10) {
                Text(product.itemName)
                    .bold()
                    
                Text("$\(product.price)")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .onTapGesture {
                    cartViewModel.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProductRowView(product: Product(imageName: "chorizo", client: "cofax", itemName: "Chorizo Burrito", price: 14, quantity: "1", qType: true))
            .environmentObject(CartViewModel())
    }
}
