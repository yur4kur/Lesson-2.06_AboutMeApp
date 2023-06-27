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
    private var password = "sensei"
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextfield.delegate = self
        passwordTextfield.delegate = self
    }
    
    override func touchesBegan(
        _ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(false)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if loginTextfield.text == login && passwordTextfield.text == password {
            return true
        } else {
            showAlert(title: "Ooops!", message: "Error in login or password")
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.name = "\(login)"
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
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
