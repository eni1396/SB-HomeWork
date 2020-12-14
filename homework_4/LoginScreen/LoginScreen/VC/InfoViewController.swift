//
//  InfoViewController.swift
//  LoginScreen
//
//  Created by Nikita Entin on 13.12.2020.
//

import UIKit

class InfoViewController: UIViewController{
    
    var types = HobbyData()
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var tabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 15
    }
    
    @IBAction func randomHobby(_ sender: UIButton) {
        let imageArray = ["fut_icon","bask_icon","gaming_icon","walk_icon","read_icon"]
        let random = types.hobby.randomElement()
        for value in types.hobby.indices {
            switch random {
            case types.hobby[value]:
                let alert = UIAlertController(title: "Ваше хобби", message: "\(types.hobby[value])", preferredStyle: .alert)
                alert.addAction(.init(title: "OK", style: .cancel))
                present(alert, animated: true)
                let customImage = UIImage(named: imageArray[value]) //соответствие картинки рандом хобби
                image.image = customImage
            default:
                break
            }
        }
    }
    
}
