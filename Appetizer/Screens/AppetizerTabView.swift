//
//  ContentView.swift
//  Appetizer
//
//  Created by Aalok Barma on 25/12/23.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label( "Home", systemImage: "house")}
            AccountView()
                .tabItem { Label( "Account", systemImage: "person")}
            OrderView()
                .tabItem { Label( "Orders", systemImage: "bag")}
                .badge(order.items.count)
        }
    }
}

#Preview {
    AppetizerTabView()
}
