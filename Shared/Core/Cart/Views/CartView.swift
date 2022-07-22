//
//  CartView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/22/22.
//

import SwiftUI

struct CartView: View {
    @Environment(\.presentationMode) var presentationMode
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
            Spacer()
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
