//
//  OrderView.swift
//  Appetizer
//
//  Created by Aalok Barma on 25/12/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        print("Order Placed")
                    } label: {
//                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 35)
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "pencil.and.list.clipboard", message: "You have no items in your orders.\nPlease add an appetizer.")
                }
            }
            .navigationTitle("🛄 Orders ")
        }
    }
    
    
    
}

#Preview {
    OrderView()
}
