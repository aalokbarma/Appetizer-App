//
//  AccountView.swift
//  Appetizer
//
//  Created by Aalok Barma on 25/12/23.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModal = AccountViewModal()
    @FocusState private var focusedField: FormTextField?
    
    enum FormTextField {
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $viewModal.user.firstName)
                        .focused($focusedField, equals: .firstName)
                        .onSubmit { focusedField = .lastName }
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $viewModal.user.lastName)
                        .focused($focusedField, equals: .lastName)
                        .onSubmit() { focusedField = .email }
                        .submitLabel(.next)
                    
                    TextField("Email", text: $viewModal.user.email)
                        .focused($focusedField, equals: .email)
                        .onSubmit() { focusedField = nil }
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday",
                               selection: $viewModal.user.birthday,
                               in: Date().oneHundredTenYearsAgo...Date().eighteenYearsAgo ,
                               displayedComponents: .date
                    )
                    
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
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button{ focusedField = nil } label: {Text("Dismiss")}
                }
            }
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
