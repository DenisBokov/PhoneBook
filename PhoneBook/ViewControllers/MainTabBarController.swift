//
//  MainTabBarController.swift
//  PhoneBook
//
//  Created by Denis Bokov on 25.07.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
//    private let person = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    private func setupViewController() {
        guard let fullPhoneListVC = viewControllers?.first as?  PhoneFullListViewController else { return }
        guard let  phoneListVC = viewControllers?.last as?  PhoneListViewController else { return }
        let person = Person.getContactList()
        phoneListVC.persons = person
        fullPhoneListVC.persons = person
    }
}
