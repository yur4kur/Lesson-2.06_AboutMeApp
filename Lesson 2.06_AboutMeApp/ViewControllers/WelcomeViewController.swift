//
//  WelcomeViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 27.06.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: Public properties
    var user: User!
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(String(describing: user.masterName))!"
    }
}
