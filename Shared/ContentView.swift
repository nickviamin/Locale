//
//  ContentView.swift
//  Shared
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI
import FirebaseAuth
import Kingfisher

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var showMenu = false
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LogInView()
            } else {
               //mainInterfaceView
           }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
