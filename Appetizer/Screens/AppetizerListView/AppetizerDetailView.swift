//
//  AppetizerDetailView.swift
//  Appetizer
//
//  Created by Aalok Barma on 28/12/23.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack(spacing: 10){
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(width: 320, height: 225)
                .aspectRatio(contentMode: .fit)
            VStack (spacing: 25){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                HStack (spacing: 35){
                    NutritionView(title: "Calories", value: appetizer.calories)
                    NutritionView(title: "Carbs", value: appetizer.carbs)
                    NutritionView(title: "Protein", value: appetizer.protein)
                }
                
            }
            Button{
                print("Button Tapped")
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to order")
            }
            .padding(.top, 10)
            .padding(.bottom, 20)
            
        }
        .frame(width: 320, height: 525, alignment: .top)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            Button{
                isShowingDetail = false
            } label: {
                XDismissButton()
            }
            , alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: mockdata.sampleAppetizer, isShowingDetail: .constant(true))
}
