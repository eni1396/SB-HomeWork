//
//  SecondTableVC.swift
//  TableViewApp
//
//  Created by Nikita Entin on 22.12.2020.
//

import UIKit

class SecondTableVC: UIViewController{

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var contacts = DataManager()
}

extension SecondTableVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        contacts.personFirstName.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return contacts.personFirstName[0] + " " + contacts.personSecondName[0]
        case 1:
            return contacts.personFirstName[1] + " " + contacts.personSecondName[1]
        case 2:
            return contacts.personFirstName[2] + " " + contacts.personSecondName[2]
        case 3:
            return contacts.personFirstName[3] + " " + contacts.personSecondName[3]
        case 4:
            return contacts.personFirstName[4] + " " + contacts.personSecondName[4]
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellMail = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath)
        let cellNumber = tableView.dequeueReusableCell(withIdentifier: "thirdCell", for: indexPath)
        let infoMail = contacts.personEmail[indexPath.row]
        let infoNumber = contacts.personNumber[indexPath.row]
        cellMail.textLabel?.text = infoMail
        cellNumber.textLabel?.text = infoNumber
        
        if indexPath.row % 2 == 0 {
            return cellMail
        } else {
            return cellNumber
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
