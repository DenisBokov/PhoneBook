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
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        for _ in 1...5 {
            persons.append(
                Person(
                    fistName: DataStore.getDetailedInfo().fistNameList.randomElement() ?? "Oops!",
                    lastName: DataStore.getDetailedInfo().lastNameList.randomElement() ?? "Oops!",
                    email: DataStore.getDetailedInfo().email.randomElement() ?? "exsample@mail.com",
                    phone: DataStore.getDetailedInfo().phoneNumber.randomElement() ?? "-- -- --"
                )
            )
        }
        return persons
    }
}

class DataStore {
    let fistNameList: [String]
    let lastNameList: [String]
    let email: [String]
    let phoneNumber: [String]
    
    init(fistNameList: [String], lastNameList: [String], email: [String], phoneNumber: [String]) {
        self.fistNameList = fistNameList
        self.lastNameList = lastNameList
        self.email = email
        self.phoneNumber = phoneNumber
    }
    
    static func getDetailedInfo() -> DataStore {
        let data = DataStore(
            fistNameList: ["Denis", "Ivan", "Alexsander", "Anna", "Nastay"],
            lastNameList: ["Sidorov", "Petrov", "Ivanov", "Kurpenko", "Kaz"],
            email: ["sid@inbox.ru", "kir@live.com", "alex@mail.ru", "faz@outlook.com", "kurp@yandex.ry"],
            phoneNumber: ["13-33-54", "11-43-54", "53-98-77", "8 900-333-8901", "12-13-90"]
        )
        return data
    }
}

