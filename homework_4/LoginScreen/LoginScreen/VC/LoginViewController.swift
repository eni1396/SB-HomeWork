//
//  ViewController.swift
//  LoginScreen
//
//  Created by Nikita Entin on 12.12.2020.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    var user = LoginData()
    
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
    func moveThroughVC() {
        guard let tabVC = storyboard?.instantiateViewController(identifier: "tabVC") as? UITabBarController else { return }
        tabVC.modalPresentationStyle = .fullScreen
        present(tabVC, animated: true)
    }
    
    
    /// действие при нажатии на кнопку ОК
    /// - Parameter sender: либо сама кнопка, либо клавиша с клавиатуры
    @IBAction func ok(_ sender: Any) {
        if login.text == user.login && password.text == user.password {
            moveThroughVC()
        } else {
            login.text = ""
            password.text = ""
            addAlert(title: "Ошибка", message: "Неверный Login или Password!")
        }
    }
    
    @IBAction func forgotLogin(_ sender: Any) {
        addAlert(title: "Забыли логин?", message: "Ваш логин \(user.login)")
    }
    
    @IBAction func forgotPass(_ sender: Any) {
        addAlert(title: "Забыли пароль?", message: "Ваш пароль \(user.password)")
    }
    
}
extension LoginViewController {
    
    func addAlert(title: String?, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
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
