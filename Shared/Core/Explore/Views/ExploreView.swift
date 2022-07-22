//
//  ExploreView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        VStack {
            SearchBar(text: .constant(""))
                .padding()
            ScrollView(showsIndicators: false) {
                VStack {
                    HStack {
                        Text("Categories")
                            .font(Font.custom(FontsManager.Fonts.treb, size: 30))
                            .foregroundColor(.gray)
                        Spacer()
                            .frame(width: 225)
                    }
                    HStack (spacing: 25){
                        ExploreItemView(imageName: "milkICON")
                        
                        ExploreItemView(imageName: "vegICON")
                        
                        ExploreItemView(imageName: "pizzaICON")
                        
                        ExploreItemView(imageName: "bakeryICON")
                    }
                    HStack(spacing: 25) {
                        ExploreItemView(imageName: "fishICON")
                        
                        ExploreItemView(imageName: "meatICON")
                        
                        ExploreItemView(imageName: "pastaICON")
                        
                        ExploreItemView(imageName: "riceICON")
                    }
                    HStack {
                        Text("Bay Area")
                            .font(Font.custom(FontsManager.Fonts.treb, size: 30))
                            .foregroundColor(.gray)
                        Spacer()
                            .frame(width: 225)
                    }
                    HStack (spacing: 25){
                        ExploreItemView(imageName: "dumplingICON")
                            
                        ExploreItemView(imageName: "bICON")
                            
                        ExploreItemView(imageName: "mICON")
                            
                        ExploreItemView(imageName: "tICON")
                    }
                    HStack(spacing: 25) {
                        ExploreItemView(imageName: "bobsICON")
                            
                        ExploreItemView(imageName: "kagawaICON")
                        
                        ExploreItemView(imageName: "janeICON")
                            
                        ExploreItemView(imageName: "greensICON")
                    }
                    HStack(spacing: 25) {
                        ExploreItemView(imageName: "orensICON")
                        
                        ExploreItemView(imageName: "dragICON")
                            
                        ExploreItemView(imageName: "juicoICON")
                            
                        ExploreItemView(imageName: "comalICON")
                    }
                    HStack(spacing: 25) {
                        ExploreItemView(imageName: "bouchonICON")
                        
                        ExploreItemView(imageName: "chickICON")
                        
                        ExploreItemView(imageName: "wolfICON")
                            
                        ExploreItemView(imageName: "manICON")
                    }
                    HStack(spacing: 25) {
                        ExploreItemView(imageName: "zachICON")
                            
                        ExploreItemView(imageName: "wiseICON")
                            
                        ExploreItemView(imageName: "goldICON")
                        
                        ExploreItemView(imageName: "sunICON")
                    }
                    HStack(spacing: 25) {
                        ExploreItemView(imageName: "onoICON")
                            
                        ExploreItemView(imageName: "rotiICON")
                            
                        ExploreItemView(imageName: "threeICON")
                            
                        ExploreItemView(imageName: "devilICON")
                    }
                    
                }
            }
            Spacer()
        }
        .navigationTitle("Explore")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
