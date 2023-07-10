//
//  ViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 26.06.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var loginTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    // MARK: Private properties
    private let user = User.getUser()
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextfield.delegate = self
        passwordTextfield.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(false)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !loginTextfield.hasText || !passwordTextfield.hasText {
            showAlert(title: "Something is missing!", message: "Check your login or password")
            return false
        } else if loginTextfield.text == user.login && passwordTextfield.text == user.password {
            return true
        } else {
            showAlert(title: "Ooops!", message: "Error in login or password", textField: passwordTextfield)
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        
        tabBarVC.viewControllers?.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let personalVC = $0 as? PersonalViewController {
                personalVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let educationVC = navigationVC.topViewController
                guard let educationVC = educationVC as? EducationViewController else { return }
                educationVC.user = user
            } else if let careerVC = $0 as? CareerViewController {
                careerVC.user = user
            }
        }
    }
    
    // MARK: IBActions
    @IBAction func forgotLoginButtonDidTap() {
        showAlert(title: "Really?", message: "Your login is \(user.login)")
    }
    
    @IBAction func forgotPasswordButtonDidTap() {
        showAlert(title: "Really?", message: "Your password is \(user.password)")
    }
    
    @IBAction func unwindAction(for unwindSegue: UIStoryboardSegue) {
        loginTextfield.text?.removeAll()
        passwordTextfield.text?.removeAll()
    }
}

// MARK: Extensions
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextfield {
            passwordTextfield.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text?.removeAll()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
