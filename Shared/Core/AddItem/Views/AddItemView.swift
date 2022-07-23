//
//  AddItemView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/21/22.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var amount: Int = 1
    
    let imageName: String
    let client: String
    let itemName: String
    let price: Int
    let quantity: String
    let qType: Bool
    
    
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
            Image(imageName)
                .resizable()
                .frame(width: 300, height: 300)
            HStack {
                Text(client.uppercased())
                    .foregroundColor(.gray)
                    .font(.largeTitle)
                    .scaledToFill()
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                    .frame(width: .infinity, height: .infinity, alignment: .center)
            }
            Spacer()
                .frame(width: 40)
            HStack{
                Spacer()
                    .frame(width: 20)
                Text(itemName)
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .scaledToFill()
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                Spacer()
                Text("$\(price)")
                    .font(.system(size: 25))
                Spacer()
                    .frame(width: 40)
            }
            Spacer()
                .frame(height: 30)
            HStack {
                Text(quantity)
                    .font(.system(size: 25))
                if qType{
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 20))
                }
                Spacer()
                    .frame(width: 100)
                HStack {
                    Button {
                        if self.amount > 1 {
                            self.amount -= 1
                        }
                    }label: {
                        Image(systemName: "minus")
                            .font(.system(size: 20))
                            .foregroundColor(amount > 1 ? Color(red: 251 / 255, green: 143 / 255, blue: 104 / 255) : .gray)
                    }
                    Spacer()
                        .frame(width: 20)
                    Text("\(self.amount)")
                        .font(.system(size: 25))
                    Spacer()
                        .frame(width: 20)
                    Button {
                        self.amount += 1
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 251 / 255, green: 143 / 255, blue: 104 / 255))
                    }
                }
            }
            Spacer()
                .frame(height: 180)
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Add To Box                         $\(price * amount)")
                        .font(Font.custom(FontsManager.Fonts.trebBold, size: 20))
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(red: 251 / 255, green: 143 / 255, blue: 104 / 255))
                        .clipShape(Capsule())
                        .padding()
                    
                }
            }
            Spacer()
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(imageName: "chorizo", client: "cofax", itemName: "Chorizo Burrito", price: 14, quantity: "1", qType: true)
    }
}
