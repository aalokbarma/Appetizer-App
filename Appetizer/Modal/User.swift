//
//  User.swift
//  Appetizer
//
//  Created by Aalok Barma on 28/12/23.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthday        = Date()
    var extraNapkins    = false
    var frequestRefills = false
}
