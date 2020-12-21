//
//  ViewController.swift
//  slider
//
//  Created by Nikita Entin on 05.12.2020.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var colorRed: UILabel!
    @IBOutlet weak var colorBlue: UILabel!
    @IBOutlet weak var colorGreen: UILabel!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    
    @IBOutlet weak var redText: UITextField!
    @IBOutlet weak var blueText: UITextField!
    @IBOutlet weak var greenText: UITextField!
    
    weak var delegate: TransitFirstViewToSecondViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView.layer.cornerRadius = 8
        
        //        MARK: left side of slider equals its color
        sliderRed.minimumTrackTintColor = .red
        sliderBlue.minimumTrackTintColor = .blue
        sliderGreen.minimumTrackTintColor = .green
        
        //        MARK: set views default colors
        self.view.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        myView.backgroundColor = #colorLiteral(red: 0.9969566082, green: 0.9105548078, blue: 1, alpha: 1)
        
        let textArray = [redText, blueText, greenText]
        for value in textArray {
            value?.returnKeyType = .done
            value?.delegate = self
        }
        sliderToggle()
        tapToHideKeyBoard()
    }
    
    
    ///   Кнопка замена фона
    /// - Parameter sender: сама кнопка
    @IBAction func doneButton(_ sender: UIButton) {
        delegate?.update(changedBackgroundColor: myView.backgroundColor!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sliderToggle() {
        colorRed.text = String(format: "%.2f", (sliderRed.value))
        redText.text = colorRed.text
        colorBlue.text = String(format: "%.2f", (sliderBlue.value))
        blueText.text = colorBlue.text
        colorGreen.text = String(format: "%.2f", (sliderGreen.value))
        greenText.text = colorGreen.text
        
        let red = CGFloat(sliderRed.value)
        let blue = CGFloat(sliderBlue.value)
        let green = CGFloat(sliderGreen.value)
        myView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}

extension SecondViewController {
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if textField.text == redText.text {
            sliderRed.value = (textField.text! as NSString).floatValue
        } else if textField.text == blueText.text {
            sliderBlue.value = (textField.text! as NSString).floatValue
        } else if textField.text == greenText.text {
            sliderGreen.value = (textField.text! as NSString).floatValue
        }
        sliderToggle()
    }
    
    //     'return' hides keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    // tap anywhere to hide keyboard
    func tapToHideKeyBoard() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tap)
    }
}
