//
//  ViewController.swift
//  trafficLight
//
//  Created by Nikita Entin on 04.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    
//    состояние светофора
    var isRed = true
    var isYellow = true
    var isGreen = true
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        redLabel.layer.cornerRadius = 40
        yellowLabel.layer.cornerRadius = 40
        greenLabel.layer.cornerRadius = 40
        changeButton.layer.cornerRadius = 18
        
        redLabel.layer.masksToBounds = true
        yellowLabel.layer.masksToBounds = true
        greenLabel.layer.masksToBounds = true
        
        redLabel.alpha = 0.3
        yellowLabel.alpha = 0.3
        greenLabel.alpha = 0.3
    }
    
    @IBAction func pressedButton() {
        changeButton.setTitle("Next", for: .normal)
        if isRed {
            isRed = false
            isYellow = true
            redLabel.alpha = 1
            greenLabel.alpha = 0.3
        }
        else if isYellow {
            isYellow = false
            isGreen = true
            yellowLabel.alpha = 1
        }
        else if isGreen{
            isGreen = false
            isRed = true
            greenLabel.alpha = 1
            redLabel.alpha = 0.3
            yellowLabel.alpha = 0.3
            
        }
    }
}

