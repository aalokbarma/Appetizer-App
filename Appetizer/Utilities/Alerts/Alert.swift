//
//  Alert.swift
//  Appetizer
//
//  Created by Aalok Barma on 28/12/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext{
    //MARK: - Network Alerts
    static let invalidUrl = AlertItem(title: Text("Invalid Url"),
                                      message: Text("Please check the url and get the correct one."),
                                      dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text("Invalid Response"),
                                      message: Text("Apology for the inconvenience, but there is something wrong in getting the response."),
                                      dismissButton: .default(Text("OK")))
    static let invalidData = AlertItem(title: Text("Invalid Data"),
                                      message: Text("There is something wrong with the data."),
                                      dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Unable to complete"),
                                      message: Text("Please take your tima and complete this."),
                                      dismissButton: .default(Text("OK")))
    
    //MARK: - Account Alerts
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                      message: Text("Please ensure all fields in the form entered correctly."),
                                      dismissButton: .default(Text("OK")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                      message: Text("Kindly check the email."),
                                      dismissButton: .default(Text("OK")))
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                      message: Text("User data is saved successfully"),
                                      dismissButton: .default(Text("OK")))
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                      message: Text("There was an error saving/retreiving the user data."),
                                      dismissButton: .default(Text("OK")))
}
