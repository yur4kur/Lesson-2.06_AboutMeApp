//
//  EducationViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 04.07.2023.
//

import UIKit

final class EducationViewController: UIViewController {
    
    // MARK: IBoutlets
    @IBOutlet var ulsuLogoImage: UIImageView!
    @IBOutlet var vdaLogoImage: UIImageView!
    @IBOutlet var ulsuWhiteLogoImage: UIImageView!
    
    @IBOutlet var titleLabels: [UILabel]!
    @IBOutlet var dataLabels: [UILabel]!
    
    @IBOutlet var primaryDiplomaLabels: [UILabel]!
    @IBOutlet var secondaryDiplomaLabels: [UILabel]!
    @IBOutlet var ternaryDiplomaLabels: [UILabel]!
    
    @IBOutlet var ternarySlider: UISlider!
    @IBOutlet var secondarySlider: UISlider!
    @IBOutlet var primarySlider: UISlider!
    @IBOutlet var alphaSliders: [UISlider]!
    
    // MARK: Private properties
    private let entry = Entry.getEducationData()
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: .white, bottomColor: .systemIndigo)
        setupLabels(titleLabels, dataLabels, with: entry)
        
        titleLabels.forEach { $0.alpha = 0 }
        dataLabels.forEach { $0.alpha = 0 }
        alphaSliders.forEach { $0.value = 0 }
        
        ulsuLogoImage.alpha = 0
        ulsuWhiteLogoImage.alpha = 0
        vdaLogoImage.alpha = 0
    }
    
//    // MARK: IBActions
//    private func resetSliders() {
//        titleLabels.forEach { $0.alpha = 0 }
//        dataLabels.forEach { $0.alpha = 0 }
//        alphaSliders.forEach { $0.value = 0 }
//
//        ulsuLogoImage.alpha = 0
//        ulsuWhiteLogoImage.alpha = 0
//        vdaLogoImage.alpha = 0
//    }
    
    @IBAction func showEducationData(_ sender: UISlider) {
        switch sender {
        case primarySlider:
            reset(ulsuWhiteLogoImage, secondaryDiplomaLabels, secondarySlider)
            reset(vdaLogoImage, ternaryDiplomaLabels, ternarySlider)
            changeAlpha(of: ulsuLogoImage, and: primaryDiplomaLabels, with: sender)
        case secondarySlider:
            reset(ulsuLogoImage, primaryDiplomaLabels, primarySlider)
            reset(vdaLogoImage, ternaryDiplomaLabels, ternarySlider)
            changeAlpha(of: ulsuWhiteLogoImage, and: secondaryDiplomaLabels, with: sender)
        default:
            reset(ulsuLogoImage, primaryDiplomaLabels, primarySlider)
            reset(ulsuWhiteLogoImage, secondaryDiplomaLabels, secondarySlider)
            changeAlpha(of: vdaLogoImage, and: ternaryDiplomaLabels, with: sender)
        }
    }
    
    // MARK: Private methods
    private func changeAlpha(of image: UIImageView, and labels: [UILabel], with slider: UISlider) {
        image.alpha = CGFloat(slider.value)
        labels.forEach { $0.alpha = CGFloat(slider.value) }
    }
    
    private func reset(_ image: UIImageView, _ labels: [UILabel], _ slider: UISlider) {
        image.alpha = 0
        labels.forEach{ $0.alpha = 0 }
        slider.value = 0
    }
}


