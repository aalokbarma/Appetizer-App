//
//  EmptyState.swift
//  Appetizer
//
//  Created by Aalok Barma on 28/12/23.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack(spacing: 30){
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 150)
                    .foregroundColor(.gray)
                Text(message)
                    .font(.title2)
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            .offset(y: -50)
        }
        
    }
}

#Preview {
    EmptyState(imageName: "pencil.and.list.clipboard", message: "No orders yet")
}
