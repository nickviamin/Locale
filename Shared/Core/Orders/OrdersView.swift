//
//  OrdersView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI

struct OrdersView: View {
    var body: some View {
        Text("Display Orders Here")
            .navigationBarHidden(true)
            .statusBar(hidden: true)
    }
}

struct OrdersView_Previews: PreviewProvider {
    static var previews: some View {
        OrdersView()
    }
}
