//
//  OrderView.swift
//  Appetizer
//
//  Created by Aalok Barma on 25/12/23.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = mockdata.orderItems
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    List{
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        print("Order Placed")
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 35)
                }
                if orderItems.isEmpty {
                    EmptyState(imageName: "pencil.and.list.clipboard", message: "You have no items in your orders.\nPlease add an appetizer.")
                }
            }
            .navigationTitle("🛄 Orders ")
        }
    }
    
    func deleteItems(at offsets: IndexSet){
        orderItems.remove(atOffsets: offsets)
    }
    
}

#Preview {
    OrderView()
}
