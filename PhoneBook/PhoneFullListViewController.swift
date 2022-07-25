//
//  PhoneFullListViewController.swift
//  PhoneBook
//
//  Created by Denis Bokov on 20.07.2022.
//

import UIKit

class PhoneFullListViewController: UITableViewController {

    var persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = persons[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "personFullInfo", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = indexPath.row == 0 ? person.phone : person.email
        content.image = indexPath.row == 0 ? UIImage(systemName: "phone") : UIImage(systemName: "mail")
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
}
