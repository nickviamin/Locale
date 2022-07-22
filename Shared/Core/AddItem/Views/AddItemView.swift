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
                        .foregroundColor(.white)
                        .frame(width: 60, height: 35)
                        .background(Color(red: 251 / 255, green: 143 / 255, blue: 104 / 255))
                        .clipShape(Capsule())
                        .padding()
                    }
                Text("LOGO")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
                    .frame(width: 200, height: 50, alignment: .center)
                Spacer()
            }
            Image(imageName)
                .resizable()
                .frame(width: 300, height: 300)
            HStack{
                Text(itemName)
                    .font(.largeTitle)
                    .foregroundColor(.gray)
                    .offset(x: 20)
                Spacer()
                Text("$\(price)")
                    .font(.system(size: 25))
                    .offset(x: -30)
            }
            Spacer()
                .frame(height: 20)
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
                            .foregroundColor(.gray)
                    }
                    Text("\(self.amount)")
                        .font(.system(size: 20))
                    Button {
                        self.amount += 1
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 20))
                            .foregroundColor(.gray)
                    }
                }
            }
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Add To Box")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(red: 251 / 255, green: 143 / 255, blue: 104 / 255))
                    .clipShape(Capsule())
                    .padding()
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
