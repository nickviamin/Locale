//
//  ExploreItemView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/22/22.
//

import SwiftUI

struct ExploreItemView: View {
    
    let imageName: String
    
    var body: some View {
        Button {
            
        } label: {
            Image(imageName)
                .resizable()
                .frame(width: 70, height: 70)
        }
    }
}

struct ExploreItemView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreItemView(imageName: "milkICON")
    }
}
