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
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //textFieldShouldClear(loginTextfield)
        //textFieldShouldClear(passwordTextfield)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(false)
    }
    
    // MARK: IBActions
    @IBAction func forgotLoginButton() {
    }
    
    @IBAction func forgotPasswordButton() {
    }
}

extension LoginViewController: UITextFieldDelegate {
    internal func textFieldShouldClear(_ textField: UITextField) -> Bool {
        true
    }
}
