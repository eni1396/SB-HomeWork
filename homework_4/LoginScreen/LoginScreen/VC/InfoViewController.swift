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
        button.layer.cornerRadius = 15
        view.addSubview(image)
    }
    
    @IBAction func randomHobby(_ sender: UIButton) {
        let random = types.hobby.randomElement()
        switch random {
        case types.hobby[0]:
            let alert = UIAlertController(title: "Ваше хобби", message: "\(types.hobby[0])", preferredStyle: .alert)
            alert.addAction(.init(title: "OK", style: .cancel))
            present(alert, animated: true)
            
            let futImage = UIImage(named: "fut_icon")
            image.image = futImage
        case types.hobby[1]:
            let alert = UIAlertController(title: "Ваше хобби", message: "\(types.hobby[1])", preferredStyle: .alert)
            alert.addAction(.init(title: "OK", style: .cancel))
            present(alert, animated: true)
            
            let baskImage = UIImage(named: "bask_icon")
            image.image = baskImage
        case types.hobby[2]:
            let alert = UIAlertController(title: "Ваше хобби", message: "\(types.hobby[2])", preferredStyle: .alert)
            alert.addAction(.init(title: "OK", style: .cancel))
            present(alert, animated: true)
            
            let gameImage = UIImage(named: "gaming_icon")
            image.image = gameImage
        case types.hobby[3]:
            let alert = UIAlertController(title: "Ваше хобби", message: "\(types.hobby[3])", preferredStyle: .alert)
            alert.addAction(.init(title: "OK", style: .cancel))
            present(alert, animated: true)
            
            let walkImage = UIImage(named: "walk_icon")
            image.image = walkImage
        case types.hobby[4]:
            let alert = UIAlertController(title: "Ваше хобби", message: "\(types.hobby[4])", preferredStyle: .alert)
            alert.addAction(.init(title: "OK", style: .cancel))
            present(alert, animated: true)
            
            let readImage = UIImage(named: "read_icon")
            image.image = readImage
        default:
            break
        }
    }
    
}
