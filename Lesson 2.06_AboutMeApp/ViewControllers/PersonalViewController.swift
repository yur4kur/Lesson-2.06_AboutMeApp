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
    private let personalEntries = user.background[0]
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.name
        personalImageView.image = UIImage(named: user.photo)
        setupLabels(titleLabels, dataLabels, with: personalEntries)
    }
    
    override func viewDidLayoutSubviews() {
        personalImageView.layer.cornerRadius = personalImageView.frame.width / 2
    }
}

    

