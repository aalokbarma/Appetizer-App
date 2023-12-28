//
//  NutritionView.swift
//  Appetizer
//
//  Created by Aalok Barma on 28/12/23.
//

import SwiftUI

struct NutritionView: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5){
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(Color("darkgray"))
            Text(value)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
                .italic()
        }
    }
}

#Preview {
    NutritionView(title: "Protein", value: "20")
}
