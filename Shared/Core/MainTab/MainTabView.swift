//
//  MainTabView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house").renderingMode(.template)
                }.tag(0).navigationBarHidden(true)
            ExploreView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass").renderingMode(.template)
                }.tag(1).navigationBarHidden(true)
            
            OrdersView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "book").renderingMode(.template)
                }.tag(2).navigationBarHidden(true)
            
            AccountView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "person.crop.circle").renderingMode(.template)
                }.tag(3).navigationBarHidden(true)
        }.accentColor(Color(red: 251 / 255, green: 143 / 255, blue: 104 / 255))
        .navigationBarHidden(true)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
