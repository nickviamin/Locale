//
//  LocaleApp.swift
//  Shared
//
//  Created by Nick Viamin on 7/18/22.
//
import SwiftUI
import Firebase

@main
struct LocaleApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
