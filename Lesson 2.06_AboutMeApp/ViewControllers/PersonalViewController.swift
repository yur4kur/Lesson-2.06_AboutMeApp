//
//  PersonalViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 30.06.2023.
//

import UIKit

final class PersonalViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var personalImageView: UIImageView! 
    
    @IBOutlet var titleLabels: [UILabel]!
    @IBOutlet var dataLabels: [UILabel]!
    
    // MARK: Private properties
    var user: User!
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.name
        personalImageView.image = UIImage(named: user.person.photo)
        setupLabels(titleLabels, dataLabels, with: user.person.background[0])
    }
    
    override func viewDidLayoutSubviews() {
        personalImageView.layer.cornerRadius = personalImageView.frame.width / 2
    }
}

    

