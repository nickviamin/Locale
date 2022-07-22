//
//  ExploreItemView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/22/22.
//

import SwiftUI

struct ExploreItemView: View {
    
    let imageName: String
    let caption: String
    let capNeeded: Bool
    
    var body: some View {
        Button {
            
        } label: {
            VStack{
                Image(imageName)
                    .resizable()
                    .frame(width: 70, height: 70)
                if capNeeded {
                    Text(caption)
                        .foregroundColor(.black)
                        .font(Font.custom(FontsManager.Fonts.trebBold, size: 15))
                }
            }
        }
    }
}

struct ExploreItemView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreItemView(imageName: "milkICON", caption: "Dairy", capNeeded: true)
    }
}
