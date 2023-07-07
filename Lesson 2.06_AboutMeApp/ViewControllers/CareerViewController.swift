//
//  CareerViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 04.07.2023.
//

import UIKit

final class CareerViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var careerImageViews: [UIImageView]!
    @IBOutlet var yearsLabels: [UILabel]!
    @IBOutlet var showButton: UIButton!
    
    // MARK: Private properties
    private let careerEntries = user.background[3]
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .white, bottomColor: .systemIndigo)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupImagesAndLabels(careerImageViews, yearsLabels, with: careerEntries)
        
        careerImageViews.forEach { $0.isHidden = true }
        yearsLabels.forEach { $0.isHidden = true }
        
        showButton.setTitle("Show", for: .normal)
    }
    
    // MARK: IBActions
    @IBAction func showCareerData() {
        if showButton.currentTitle == "Show" {
            showButton.setTitle("Next", for: .normal)
        }
        
        careerImageViews.last?.isHidden = true
        careerImageViews.first?.isHidden = false
        let reorderedImage = careerImageViews.removeFirst()
        careerImageViews.append(reorderedImage)
        
        yearsLabels.last?.isHidden = true
        yearsLabels.first?.isHidden = false
        let reoderedLabel = yearsLabels.removeFirst()
        yearsLabels.append(reoderedLabel)
    }
}
