//
//  WelcomeViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 27.06.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: IBActions
    @IBAction func logoutButtonDidTap() {
        dismiss(animated: true)
    }
    
}
