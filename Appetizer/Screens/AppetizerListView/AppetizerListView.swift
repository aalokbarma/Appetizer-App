//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Aalok Barma on 25/12/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModal = AppetizerListViewModal()
    @State private var isShowingDetail = false
    
    var body: some View {
        
        ZStack{
            NavigationStack{
                List(viewModal.appetizers, id: \.id){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetail ? true : false)
            }
            .onAppear{
                viewModal.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 10 : 0)
            
            if isShowingDetail {
                AppetizerDetailView(appetizer: mockdata.sampleAppetizer, isShowingDetail: $isShowingDetail)
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

