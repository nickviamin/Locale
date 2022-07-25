//
//  OrdersView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI

struct OrdersView: View {
    var body: some View {
        VStack {
            Text("No Past Orders")
            Spacer()
                .frame(height: 550)
        }
            .navigationBarHidden(true)
            .statusBar(hidden: true)
    }
}

struct OrdersView_Previews: PreviewProvider {
    static var previews: some View {
        OrdersView()
    }
}
