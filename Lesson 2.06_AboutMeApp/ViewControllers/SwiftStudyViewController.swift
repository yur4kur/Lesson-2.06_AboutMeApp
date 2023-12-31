//
//  SwiftbookViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 30.06.2023.
//

import UIKit

final class SwiftStudyViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var titleLabels: [UILabel]!
    @IBOutlet var dataLabels: [UILabel]!
    
    // MARK: Private properties
    var user: User!
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .white, bottomColor: .systemIndigo)
        setupLabels(titleLabels, dataLabels, with: user.person.background[2])
    }
}
