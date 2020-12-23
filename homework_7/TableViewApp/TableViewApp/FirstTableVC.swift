//
//  FIrstTableVC.swift
//  TableViewApp
//
//  Created by Nikita Entin on 22.12.2020.
//

import UIKit

class FirstTableVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
    var contacts = Person.getPerson()
    
    
    
}

extension FirstTableVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        let info = contacts[indexPath.row]
        cell.textLabel?.text = info.firstName + " " + info.secondName
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let dest = storyboard?.instantiateViewController(identifier: "third") as! ContactsViewController
        dest.modalPresentationStyle = .fullScreen
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        dest.emailLabel.text = contacts[indexPath.row].email
        dest.phoneLabel.text = contacts[indexPath.row].phoneNumber
    }
}

