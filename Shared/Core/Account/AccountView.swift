//
//  AccountView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI
import Firebase

struct AccountView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        Button {
            authViewModel.signOut()
        } label: {
            Text("Logout")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
