//
//  DetailsViewController.swift
//  PhoneBook
//
//  Created by Denis Bokov on 21.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personFullInfo: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = personFullInfo.fullName
        phoneNumberLabel.text = personFullInfo.phone
        emailLabel.text = personFullInfo.email
    }
}
