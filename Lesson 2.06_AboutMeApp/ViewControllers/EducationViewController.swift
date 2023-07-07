//
//  EducationViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 04.07.2023.
//

import UIKit

final class EducationViewController: UIViewController {
    
    // MARK: IBoutlets
    
    @IBOutlet var logoImageViews: [UIImageView]!
    
    @IBOutlet var titleLabels: [UILabel]!
    
    @IBOutlet var ternarySlider: UISlider!
    @IBOutlet var secondarySlider: UISlider!
    @IBOutlet var primarySlider: UISlider!
    @IBOutlet var alphaSliders: [UISlider]!
    
    // MARK: Private properties
    private let educationEntries = user.background[1]
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: .white, bottomColor: .systemIndigo)
        setupImagesAndLabels(logoImageViews, titleLabels, with: educationEntries)
        
        logoImageViews.forEach { $0.alpha = 0 }
        titleLabels.forEach { $0.alpha = 0 }
        alphaSliders.forEach { $0.value = 0 }
    }
    
    @IBAction func showEducationData(_ sender: UISlider) {
        switch sender {
        case primarySlider:
            reset(logoImageViews, titleLabels, alphaSliders, 1, 2)
            changeAlpha(of: logoImageViews, and: titleLabels, subcriptIndex: 0, with: sender)
        case secondarySlider:
            reset(logoImageViews, titleLabels, alphaSliders, 0, 2)
            changeAlpha(of: logoImageViews, and: titleLabels, subcriptIndex: 1 ,with: sender)
        default:
            reset(logoImageViews, titleLabels, alphaSliders, 0, 1)
            changeAlpha(of: logoImageViews, and: titleLabels, subcriptIndex: 2,with: sender)
        }
    }
    
    // MARK: Private methods
    private func changeAlpha(
        of image: [UIImageView],
        and label: [UILabel],
        subcriptIndex: Int,
        with slider: UISlider
    ) {
        image[subcriptIndex].alpha = CGFloat(slider.value)
        label[subcriptIndex].alpha = CGFloat(slider.value) }
    }
    
    private func reset(
        _ image: [UIImageView],
        _ labels: [UILabel],
        _ sliders: [UISlider],
        _ firstIndex: Int,
        _ secondtIndex: Int
    ) {
        image[firstIndex].alpha = 0
        image[secondtIndex].alpha = 0
        labels[firstIndex].alpha = 0
        labels[secondtIndex].alpha = 0
        sliders[firstIndex].value = 0
        sliders[secondtIndex].value = 0
}


