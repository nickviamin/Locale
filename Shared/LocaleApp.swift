//
//  LocaleApp.swift
//  Shared
//
//  Created by Nick Viamin on 7/18/22.
//
import SwiftUI
import Firebase
import Introspect

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
                    .introspectNavigationController { (UINavigationController) in
                        NavigationControllerDelegate.shared.becomeDelegate(of: UINavigationController)
                    }
            }
            .environmentObject(viewModel)
        }
    }
}

class NavigationControllerDelegate: NSObject {

    static let shared = NavigationControllerDelegate()

    func becomeDelegate(of navigationController: UINavigationController) {
        navigationController.isNavigationBarHidden = true
        navigationController.navigationBar.isHidden = true
        navigationController.navigationBar.addObserver(self, forKeyPath: "alpha", options: .new, context: nil)
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if let navigationBar = object as? UINavigationBar {
            navigationBar.isHidden = true
        }
    }
}
