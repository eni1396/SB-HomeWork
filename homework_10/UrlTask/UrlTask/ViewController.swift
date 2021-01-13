//
//  ViewController.swift
//  UrlTask
//
//  Created by Nikita Entin on 13.01.2021.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var activityStatus: UIActivityIndicatorView!
    @IBOutlet weak var imageFrame: UIImageView!
    @IBOutlet weak var descLabel: UILabel! {
        didSet {
            descLabel.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityStatus.hidesWhenStopped = true
        activityStatus.startAnimating()
        parseJSON()
    }
    //MARK:- делается новый запрос на загрузку
    @IBAction func randomImage(_ sender: Any) {
        activityStatus.hidesWhenStopped = true
        activityStatus.startAnimating()
        parseJSON()
    }
    
    //MARK:- каждый раз загружается случайная картинка с сайта
    private func parseJSON() {
        guard let url = URL(string: "https://random.dog/woof.json") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            if let response = response {
                print(response)
            }
            do {
                let info = try JSONDecoder().decode(SiteData.self, from: data)
                guard let anotherURL = URL(string: info.url) else { return }
                let imageData = try Data(contentsOf: anotherURL)
                DispatchQueue.main.async() {
                self.descLabel.text = "file size = \(info.fileSizeBytes) bytes"
                self.imageFrame.image = UIImage(data: imageData)
                self.activityStatus.stopAnimating()
                }
            } catch let error {
                print(error)
            }
        }.resume()
    }
}

