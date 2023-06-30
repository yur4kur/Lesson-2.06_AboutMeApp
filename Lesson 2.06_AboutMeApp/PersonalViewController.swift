//
//  PersonalViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 30.06.2023.
//

import UIKit

class PersonalViewController: UIViewController {
    @IBOutlet var personalImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //personalImage.layer.cornerRadius = personalImage.frame.width / 2
    }
    
    override func viewDidLayoutSubviews() {
//        super.viewWillLayoutSubviews()
        personalImage.layer.cornerRadius = personalImage.frame.width / 2
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //personalImage.layer.cornerRadius = personalImage.frame.width / 2
    }
}
