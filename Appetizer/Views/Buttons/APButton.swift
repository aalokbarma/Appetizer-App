//
//  APButton.swift
//  Appetizer
//
//  Created by Aalok Barma on 28/12/23.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .frame(width: 260, height: 50)
            .background(Color.brandPrimary)
            .foregroundColor(.white)
            .font(.title3)
            .fontWeight(.bold)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Button")
}
