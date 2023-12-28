//
//  XDismissButton.swift
//  Appetizer
//
//  Created by Aalok Barma on 28/12/23.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        Image(systemName: "x.circle.fill")
            .resizable()
            .frame(width: 25, height: 25, alignment: .center)
            .padding(5)
            .foregroundColor(.white)
    }
}

#Preview {
    XDismissButton()
}
