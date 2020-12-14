//
//  TabBarViewController.swift
//  LoginScreen
//
//  Created by Nikita Entin on 12.12.2020.
//

import UIKit

class HomeViewController: UIViewController {
    var userName = LoginData()
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var outLabel: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Welcome back, \(userName.fullName)"
    }
    @IBAction func logOut(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "loginVC") as? LoginViewController else { return }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: .none)
    }
    
}


