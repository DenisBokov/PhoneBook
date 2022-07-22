//
//  DataStore.swift
//  PhoneBook
//
//  Created by Denis Bokov on 22.07.2022.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    let fistNameList = ["Denis", "Ivan", "Alexsander", "Andrey", "Roman"]
    let lastNameList = ["Sidorov", "Petrov", "Ivanov", "Kurpenko", "Kaz"]
    let email = ["sid@inbox.ru", "kir@live.com", "alex@mail.ru", "faz@outlook.com", "kurp@yandex.ry"]
    let phoneNumber = ["13-33-54", "11-43-54", "53-98-77", "8 900-333-8901", "12-13-90"]
    
    private init() {}
}
