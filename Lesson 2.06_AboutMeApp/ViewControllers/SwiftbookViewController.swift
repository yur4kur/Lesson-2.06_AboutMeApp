//
//  SwiftbookViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 30.06.2023.
//

import UIKit

final class SwiftbookViewController: UIViewController {
    @IBOutlet var titleLabels: [UILabel]!
    @IBOutlet var dataLabels: [UILabel]!
    
    private let entries = Entry.getSwiftSelfLearning()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .white, bottomColor: .systemIndigo)
        setupLabels(titleLabels, dataLabels, with: entries)
    }
}
