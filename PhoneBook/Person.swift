//
//  Person.swift
//  PhoneBook
//
//  Created by Denis Bokov on 20.07.2022.
//

import Foundation


struct Person {
    let fistName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(fistName) \(lastName)"
    }
}

extension Person {
    
}

