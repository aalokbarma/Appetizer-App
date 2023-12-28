//
//  AccountView.swift
//  Appetizer
//
//  Created by Aalok Barma on 25/12/23.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModal = AccountViewModal()
    
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $viewModal.user.firstName)
                    TextField("Last Name", text: $viewModal.user.lastName)
                    TextField("Email", text: $viewModal.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModal.user.birthday, displayedComponents: .date)
                    
                    Button{
                        viewModal.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: $viewModal.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModal.user.frequestRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                
            }
            .navigationTitle("👨 Account")
        }
        .onAppear{
            viewModal.retreiveUser()
        }
        .alert(item: $viewModal.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton
            )
        }
    }
}

#Preview {
    AccountView()
}
