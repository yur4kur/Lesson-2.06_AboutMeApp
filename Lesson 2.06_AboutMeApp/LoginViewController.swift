//
//  ViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 26.06.2023.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var loginTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    // MARK: Private properties
    private var login = "Jane"
    private var password = "Sensei"
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextfield.delegate = self
        passwordTextfield.delegate = self
    }
    
    
    
    
    // MARK: IBActions
    @IBAction func forgotLoginButtonDidTap() {
        showAlert(title: "Ooops!", message: "Your login is '\(login)'")
    }
    
    @IBAction func forgotPasswordButtonDidTap() {
        showAlert(title: "Ooops!", message: "Your password is '\(password)'")
    }
}

// MARK: Extensions
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(false)
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
