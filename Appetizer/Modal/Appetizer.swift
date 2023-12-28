//
//  Appetizer.swift
//  Appetizer
//
//  Created by Aalok Barma on 27/12/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
}

struct AppetizerResponse: Decodable{
    let request: [Appetizer]
}

struct mockdata {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Hello World!!",
                                           description: "This is a sample hello world program",
                                           price: 20.9,
                                           imageURL: "https://www.codelikethewind.org/content/images/size/w2000/2022/05/hello_world.png",
                                           calories: 20,
                                           protein: 10,
                                           carbs: 20)
    
    static let orderItemOne = Appetizer(id: 1,
                                           name: "Hello World!!",
                                           description: "This is a sample hello world program",
                                           price: 20.9,
                                           imageURL: "https://www.codelikethewind.org/content/images/size/w2000/2022/05/hello_world.png",
                                           calories: 20,
                                           protein: 10,
                                           carbs: 20)
    static let orderItemTwo = Appetizer(id: 2,
                                           name: "Hello World!!",
                                           description: "This is a sample hello world program",
                                           price: 20.9,
                                           imageURL: "https://www.codelikethewind.org/content/images/size/w2000/2022/05/hello_world.png",
                                           calories: 20,
                                           protein: 10,
                                           carbs: 20)
    static let orderItemThree = Appetizer(id: 3,
                                           name: "Hello World!!",
                                           description: "This is a sample hello world program",
                                           price: 20.9,
                                           imageURL: "https://www.codelikethewind.org/content/images/size/w2000/2022/05/hello_world.png",
                                           calories: 20,
                                           protein: 10,
                                           carbs: 20)
    
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
    
    
}
