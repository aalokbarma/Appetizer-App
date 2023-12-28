//
//  AppetizerApp.swift
//  Appetizer
//
//  Created by Aalok Barma on 25/12/23.
//

import SwiftUI

@main
struct AppetizerApp: App {
    
    var order = Order()
    
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
