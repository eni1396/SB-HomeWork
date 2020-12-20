//
//  FirstViewController.swift
//  slider
//
//  Created by Nikita Entin on 17.12.2020.
//

import UIKit

protocol TransitFirstViewToSecondViewDelegate: AnyObject {
    
    func update(changedBackgroundColor: UIColor)
}

class FirstViewController: UIViewController, TransitFirstViewToSecondViewDelegate {
    
    
    
    @IBAction func openSecondView(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(identifier: "2VC") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        vc.delegate = self
    }
}

extension FirstViewController {
    
    func update(changedBackgroundColor: UIColor) {
        view.backgroundColor = changedBackgroundColor
    }

}
