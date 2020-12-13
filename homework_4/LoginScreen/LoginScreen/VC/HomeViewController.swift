//
//  TabBarViewController.swift
//  LoginScreen
//
//  Created by Nikita Entin on 12.12.2020.
//

import UIKit

class HomeViewController: UIViewController {
    var userName = LoginViewController()
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Welcome back, \(userName.user.login)"
    }
    
    
    
    
    
}
