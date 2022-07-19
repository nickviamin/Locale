//
//  AuthHeaderView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI

struct AuthHeaderView: View {
    let title1: String
    let title2: String
    
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Image("header")
                .resizable()
                .frame(width: 410, height: 260)
                .padding(.leading)
                .scaledToFill()
                .clipShape(RoundedShape(corners: [.bottomRight]))
            
            VStack(alignment: .leading){
                HStack { Spacer() }
                    .padding()
                    .padding()
                    .padding()
                    .padding()
                Text(title1)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading)
                    .padding()
                    .font(Font.custom(FontsManager.Fonts.treb, size: 70))
                
                Text(title2)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.leading)
                 
            }
             
        }
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "locale", title2: "")
    }
}
