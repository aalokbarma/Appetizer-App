//
//  Date+Ext.swift
//  Appetizer
//
//  Created by Aalok Barma on 28/12/23.
//

import Foundation

extension Date{
    var eighteenYearsAgo: Date{
        Calendar.current.date(byAdding: .year, value: -18, to: Date()) ?? Date()
    }
    
    var oneHundredTenYearsAgo: Date{
        Calendar.current.date(byAdding: .year, value: -110, to: Date()) ?? Date()
    }
}
