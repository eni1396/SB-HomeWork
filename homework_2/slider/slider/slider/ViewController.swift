//
//  ViewController.swift
//  slider
//
//  Created by Nikita Entin on 05.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var colorRed: UILabel!
    @IBOutlet weak var colorBlue: UILabel!
    @IBOutlet weak var colorGreen: UILabel!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        MARK: set min values of slider
        sliderRed.minimumValue = 0
        sliderBlue.minimumValue = 0
        sliderGreen.minimumValue = 0
        
//        MARK: set max values of slider
        sliderRed.maximumValue = 255
        sliderBlue.maximumValue = 255
        sliderGreen.maximumValue = 255

//        MARK: left side of slider equals its color
        sliderRed.minimumTrackTintColor = .red
        sliderBlue.minimumTrackTintColor = .blue
        sliderGreen.minimumTrackTintColor = .green
        
//        MARK: set views default colors
        self.view.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        myView.backgroundColor = #colorLiteral(red: 0.9969566082, green: 0.9105548078, blue: 1, alpha: 1)
        


    }
    
    @IBAction func sliderToggle() {
        colorRed.text = String(Int(sliderRed.value))
        colorBlue.text = String(Int(sliderBlue.value))
        colorGreen.text = String(Int(sliderGreen.value))
        
        let red = CGFloat(sliderRed.value)
        let blue = CGFloat(sliderBlue.value)
        let green = CGFloat(sliderGreen.value)
        myView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
