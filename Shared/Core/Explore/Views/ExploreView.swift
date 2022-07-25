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
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            Spacer()
                                .frame(width: 0)
                            ExploreItemView(imageName: "milkICON", caption: "Dairy", capNeeded: true)
                        
                            ExploreItemView(imageName: "vegICON", caption: "Healthy", capNeeded: true)
                        
                            ExploreItemView(imageName: "pizzaICON", caption: "Pizza", capNeeded: true)
                        
                            ExploreItemView(imageName: "bakeryICON", caption: "Bakery", capNeeded: true)
                        }
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            Spacer()
                                .frame(width: 0)
                            ExploreItemView(imageName: "fishICON", caption: "Fish", capNeeded: true)
                        
                            ExploreItemView(imageName: "meatICON", caption: "Meat", capNeeded: true)
                        
                            ExploreItemView(imageName: "pastaICON", caption: "Pasta", capNeeded: true)
                        
                            ExploreItemView(imageName: "riceICON", caption: "Chinese", capNeeded: true)
                        }
                    }
                    HStack {
                        Text("Bay Area")
                            .font(Font.custom(FontsManager.Fonts.treb, size: 30))
                            .foregroundColor(.black)
                            .offset(x: -5, y: 15)
                        Spacer()
                            .frame(width: 225)
                    }
                    HStack (spacing: 25){
                        ExploreItemView(imageName: "dumplingICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "bICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "mICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "tICON", caption: "", capNeeded: false)
                    }
                    HStack(spacing: 25) {
                        ExploreItemView(imageName: "bobsICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "kagawaICON", caption: "", capNeeded: false)
                        
                        ExploreItemView(imageName: "janeICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "greensICON", caption: "", capNeeded: false)
                    }
                    HStack(spacing: 25) {
                        ExploreItemView(imageName: "orensICON", caption: "", capNeeded: false)
                        
                        ExploreItemView(imageName: "dragICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "juicoICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "comalICON", caption: "", capNeeded: false)
                    }
                    HStack(spacing: 25) {
                        ExploreItemView(imageName: "bouchonICON", caption: "", capNeeded: false)
                        
                        ExploreItemView(imageName: "chickICON", caption: "", capNeeded: false)
                        
                        ExploreItemView(imageName: "wolfICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "manICON", caption: "", capNeeded: false)
                    }
                    HStack(spacing: 25) {
                        ExploreItemView(imageName: "zachICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "wiseICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "goldICON", caption: "", capNeeded: false)
                        
                        ExploreItemView(imageName: "sunICON", caption: "", capNeeded: false)
                    }
                    HStack(spacing: 25) {
                        ExploreItemView(imageName: "onoICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "rotiICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "threeICON", caption: "", capNeeded: false)
                            
                        ExploreItemView(imageName: "devilICON", caption: "", capNeeded: false)
                    }
                    
                }
            }
            Spacer()
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
