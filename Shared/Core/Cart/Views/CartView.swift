//
//  CartView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/22/22.
//

import SwiftUI

struct CartView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var cartViewModel: CartViewModel
    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 25, height: 20)
                        .font(.headline)
                        .foregroundColor(Color(red: 251 / 255, green: 143 / 255, blue: 104 / 255))
                        .padding()
                }
                Text("Your Box")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
                    .frame(width: 266, height: 50, alignment: .center)
                Spacer()
            }
                if cartViewModel.products.count > 0 {
                    VStack {
                        ScrollView {
                            ForEach(cartViewModel.products, id: \.id) {
                                product in
                                ProductRowView(product: product)
                            }
                        }
                        Spacer()
                        VStack {
                            HStack {
                                Text("Your box total")
                                    .lineSpacing(10)
                                Spacer()
                                Text("$\(cartViewModel.total).00")
                                    .bold()
                                    .lineSpacing(10)
                            }
                            .padding()
                            HStack {
                                Text("Delivery Fee")
                                    .lineSpacing(10)
                                Spacer()
                                Text("$5.00")
                                    .bold()
                                    .lineSpacing(10)
                                
                            }
                            .padding()
                            HStack {
                                Text("Your total")
                                Spacer()
                                    .lineSpacing(10)
                                Text("$\(cartViewModel.total + 5).00")
                                    .bold()
                                    .lineSpacing(10)
                            }
                            .padding()
                            PaymentButton(action: {})
                                .padding()
                            }
                    }
                } else {
                    Text("Your box is currently empty")
                }
                Spacer()
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartViewModel())
    }
}
