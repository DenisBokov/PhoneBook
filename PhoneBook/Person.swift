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
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let fistNames = DataStore.shared.fistNameList.shuffled()
        let lastNames = DataStore.shared.lastNameList.shuffled()
        let emails = DataStore.shared.email.shuffled()
        let phones = DataStore.shared.phoneNumber.shuffled()
        
        let interationCount = min(
            fistNames.count,
            lastNames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<interationCount {
            let person = Person(
                fistName: fistNames[index],
                lastName: lastNames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}

