//
//  AddItemView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/21/22.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var cartViewModel: CartViewModel
    @State var changedAmount: Int = 1
    var product: Product
    
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
                Spacer()
            }
            Image(product.imageName)
                .resizable()
                .frame(width: 300, height: 300)
            HStack {
                Spacer()
                    .frame(width: 20)
                Text(product.client.uppercased())
                    .foregroundColor(.gray)
                    .font(Font.custom(FontsManager.Fonts.trebBold, size: 35))
                    .scaledToFill()
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                Spacer()
                    .frame(width: 20)
            }
            Spacer()
                .frame(width: 40)
            HStack{
                Spacer()
                    .frame(width: 20)
                Text(product.itemName)
                    .font(Font.custom(FontsManager.Fonts.treb, size: 30))
                    .foregroundColor(.black)
                    .scaledToFill()
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                Spacer()
                Text("$\(product.price)")
                    .font(Font.custom(FontsManager.Fonts.treb, size: 25))
                Spacer()
                    .frame(width: 40)
            }
            Spacer()
                .frame(height: 30)
            HStack {
                Text(product.quantity)
                    .font(Font.custom(FontsManager.Fonts.treb, size: 25))
                if product.qType{
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 20))
                }
                Spacer()
                    .frame(width: 100)
                HStack {
                    Button {
                        if changedAmount > 1 {
                            changedAmount -= 1
                        }
                    }label: {
                        Image(systemName: "minus")
                            .font(.system(size: 20))
                            .foregroundColor(changedAmount > 1 ? Color(red: 251 / 255, green: 143 / 255, blue: 104 / 255) : .gray)
                    }
                    Spacer()
                        .frame(width: 20)
                    Text("\(changedAmount)")
                        .font(Font.custom(FontsManager.Fonts.treb, size: 25))
                    Spacer()
                        .frame(width: 20)
                    Button {
                        changedAmount += 1
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 251 / 255, green: 143 / 255, blue: 104 / 255))
                    }
                }
            }
            Spacer()
                .frame(height: 180)
            Divider().frame(width: 400)
            Button {
                cartViewModel.addToCart(product: product, changedAmount: changedAmount)
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Add To Box                         $\(product.price * changedAmount)")
                        .font(Font.custom(FontsManager.Fonts.trebBold, size: 20))
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(red: 251 / 255, green: 143 / 255, blue: 104 / 255))
                        .clipShape(Capsule())
                        .padding()
                    
                }
            }
            //Spacer()
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(product: productList[0])
    }
}
