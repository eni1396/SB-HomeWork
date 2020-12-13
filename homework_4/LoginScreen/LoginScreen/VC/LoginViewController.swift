//
//  ViewController.swift
//  LoginScreen
//
//  Created by Nikita Entin on 12.12.2020.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    var user = LoginData(login: "Nik", password: "qwerty")
    
    @IBOutlet weak var passMiss: UIButton!
    @IBOutlet weak var loginMiss: UIButton!
    @IBOutlet weak var okLabel: UIButton!
    @IBOutlet weak var login: UITextField! {
        didSet {
            login.delegate = self
            login.autocorrectionType = .no
            login.returnKeyType = .next
        }
    }
    @IBOutlet weak var password: UITextField! {
        didSet {
            password.delegate = self
            password.autocorrectionType = .no
            password.returnKeyType = .done
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapToHideKeyBoard()
        
        login.layer.cornerRadius = 20
        password.layer.cornerRadius = 20
        okLabel.layer.cornerRadius = 10
        passMiss.layer.cornerRadius = 10
        loginMiss.layer.cornerRadius = 10
        
    }
    
    
    /// действие при нажатии на кнопку ОК
    /// - Parameter sender: либо сама кнопка, либо клавиша с клавиатуры
    @IBAction func ok(_ sender: Any) {
        if login.text == user.login && password.text == user.password {
            guard let newVC = storyboard?.instantiateViewController(identifier: "tabVC") as? UITabBarController else { return }
            newVC.modalPresentationStyle = .fullScreen
            present(newVC, animated: true)
        } else {
            login.text = ""
            password.text = ""
            
            let alert = UIAlertController(title: "Ошибка", message: "Неверный Login или Password!", preferredStyle: .alert)
            alert.addAction(.init(title: "OK", style: .cancel))
            present(alert, animated: true)
        }
    }
    
    @IBAction func forgotLogin(_ sender: Any) {
        let alert = UIAlertController(title: "Ваш Login", message: "\(user.login)", preferredStyle: .alert)
        alert.addAction(.init(title: "OK", style: .cancel))
        present(alert, animated: true)
    }
    
    @IBAction func forgotPass(_ sender: Any) {
        let alert = UIAlertController(title: "Ваш Password", message: "\(user.password)", preferredStyle: .alert)
        alert.addAction(.init(title: "OK", style: .cancel))
        present(alert, animated: true)
    }
    
}
extension LoginViewController {
    
    //выполняется метод делегата, чтобы по нажатию на Return был переход на следующий TextField
    @objc func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case login:
            password.becomeFirstResponder()
        case password:
            ok(password.returnKeyType)
        default:
            textField.resignFirstResponder()
        }
        return true
    }
    // скрытие клавиатуры по нажатию на любое место вне клавиатуры
    func tapToHideKeyBoard() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tap)
    }
}
