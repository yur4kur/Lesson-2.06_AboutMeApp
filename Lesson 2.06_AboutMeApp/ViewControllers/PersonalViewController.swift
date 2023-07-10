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
    var name: String!
    var image: String!
    var personalEntries: [Entry]!
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        personalImageView.image = UIImage(named: image)
        setupLabels(titleLabels, dataLabels, with: personalEntries)
    }
    
    override func viewDidLayoutSubviews() {
        personalImageView.layer.cornerRadius = personalImageView.frame.width / 2
    }
}

    

