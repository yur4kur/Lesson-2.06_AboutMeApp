//
//  PersonalViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 30.06.2023.
//

import UIKit

final class PersonalViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var personalImage: UIImageView!
    
    @IBOutlet var titleLabels: [UILabel]!
    @IBOutlet var dataLabels: [UILabel]!
    
    // MARK: Private properties
    private let personalEntries = Entry.getPersonalData()
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels(titleLabels, dataLabels, with: personalEntries)
    }
    
    override func viewDidLayoutSubviews() {
        personalImage.layer.cornerRadius = personalImage.frame.width / 2
    }
}

    

