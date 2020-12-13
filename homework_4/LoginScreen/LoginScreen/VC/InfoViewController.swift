//
//  InfoViewController.swift
//  LoginScreen
//
//  Created by Nikita Entin on 13.12.2020.
//

import UIKit

class InfoViewController: UIViewController {
    
    var types = HobbyData()
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomImage()
        button.layer.cornerRadius = 15
    }
    //не успел доделать логику, по которой при каждом новом открытии вкладки менялась картинка по соответсвию с кнопкой
    func randomImage() {
        let imageArray = ["fut_icon","bask_icon","gaming_icon","read_icon","walk_icon"]
        let imageIcon = UIImage(named: imageArray.randomElement()!)
        image.image = imageIcon
        view.addSubview(image)
    }
    
    
    
    @IBAction func randomHobby(_ sender: UIButton) {
        types.hobby = ["football","basketball","gaming","walking","reading"]
        let random = types.hobby.randomElement()
        switch random {
        case types.hobby[0]:
            let alert = UIAlertController(title: "Ваше хобби", message: "\(types.hobby[0])", preferredStyle: .alert)
            alert.addAction(.init(title: "OK", style: .cancel))
            present(alert, animated: true)
        case types.hobby[1]:
            let alert = UIAlertController(title: "Ваше хобби", message: "\(types.hobby[1])", preferredStyle: .alert)
            alert.addAction(.init(title: "OK", style: .cancel))
            present(alert, animated: true)
        case types.hobby[2]:
            let alert = UIAlertController(title: "Ваше хобби", message: "\(types.hobby[2])", preferredStyle: .alert)
            alert.addAction(.init(title: "OK", style: .cancel))
            present(alert, animated: true)
        case types.hobby[3]:
            let alert = UIAlertController(title: "Ваше хобби", message: "\(types.hobby[3])", preferredStyle: .alert)
            alert.addAction(.init(title: "OK", style: .cancel))
            present(alert, animated: true)
        case types.hobby[4]:
            let alert = UIAlertController(title: "Ваше хобби", message: "\(types.hobby[4])", preferredStyle: .alert)
            alert.addAction(.init(title: "OK", style: .cancel))
            present(alert, animated: true)
        default:
            break
        }
        
    }
    
}
