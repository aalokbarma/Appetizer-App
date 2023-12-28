//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Aalok Barma on 25/12/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModal = AppetizerListViewModal()
    
    var body: some View {
        
        ZStack{
            NavigationStack{
                List(viewModal.appetizers, id: \.id){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .listRowSeparator(.hidden)
//                        .listRowSeparatorTint(.brandPrimary)
                        .onTapGesture {
                            viewModal.selectedAppetizer = appetizer
                            viewModal.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .listStyle(.plain)
                .disabled(viewModal.isShowingDetail)
            }
            .task {
                viewModal.getAppetizers()
            }
            .blur(radius: viewModal.isShowingDetail ? 10 : 0)
            
            if viewModal.isShowingDetail {
                AppetizerDetailView(appetizer: viewModal.selectedAppetizer!, isShowingDetail: $viewModal.isShowingDetail)
            }
            
            if viewModal.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModal.alertItem) { alertItem in
            Alert(title: alertItem.title, message:
                    alertItem.message, dismissButton:
                    alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}

