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
            Image("dish2")
                .resizable()
                .frame(width: 320, height: 225)
                .aspectRatio(contentMode: .fit)
            VStack (spacing: 35){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                HStack (spacing: 35){
                    VStack(spacing: 10){
                        Text("Calories")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("darkgray"))
                        Text("\(appetizer.calories)")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.secondary)
                            .italic()
                    }
                    VStack(spacing: 10){
                        Text("Carbs")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("darkgray"))
                        Text("\(appetizer.carbs)")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.secondary)
                            .italic()
                    }
                    VStack(spacing: 10){
                        Text("Protein")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("darkgray"))
                        Text("\(appetizer.protein)")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.secondary)
                            .italic()
                    }
                }
                
            }
            Button{
                print("Button Tapped")
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to order")
                    .frame(width: 260, height: 50)
                    .background(Color.brandPrimary)
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.bold)
                    .cornerRadius(10)
            }
            .padding(.top, 20)
            
        }
        .frame(width: 320, height: 525, alignment: .top)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            Button{
                isShowingDetail = false
            } label: {
                Image(systemName: "x.circle.fill")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: .center)
                    .padding(5)
                    .foregroundColor(.white)
            }
                 
                 , alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: mockdata.sampleAppetizer, isShowingDetail: .constant(true))
}
