//
//  ContactsViewController.swift
//  TableViewApp
//
//  Created by Nikita Entin on 22.12.2020.
//

import UIKit

class ContactsViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var contacts = DataManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = "email: \(contacts.personEmail.randomElement()!)"
        phoneLabel.text = "phone: \(contacts.personNumber.randomElement()!)"
    }
}
