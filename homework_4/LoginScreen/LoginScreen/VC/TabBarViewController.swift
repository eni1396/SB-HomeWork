//
//  TabBarViewController.swift
//  LoginScreen
//
//  Created by Nikita Entin on 14.12.2020.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let newVC = storyboard?.instantiateViewController(identifier: "homeNAVI") as? UINavigationController else { return }
        newVC.modalPresentationStyle = .fullScreen
        present(newVC, animated: true)
    }
    
}
