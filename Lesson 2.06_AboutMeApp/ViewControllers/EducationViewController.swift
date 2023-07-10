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
    
    @IBOutlet var secondarySlider: UISlider!
    @IBOutlet var primarySlider: UISlider!
    @IBOutlet var alphaSliders: [UISlider]!
    
    // MARK: Private properties
    var user: User!
    
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .white, bottomColor: .systemIndigo)
        setupImagesAndLabels(logoImageViews, titleLabels, with: user.person.background[1])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        logoImageViews.forEach { $0.alpha = 0 }
        titleLabels.forEach { $0.alpha = 0 }
        alphaSliders.forEach { $0.value = 0 }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let swiftVC = segue.destination as? SwiftStudyViewController else { return }
        swiftVC.user = user
    }
    
    // MARK: IBActions
    @IBAction func showEducationData(_ sender: UISlider) {
        switch sender {
        case primarySlider:
            reset(logoImageViews, titleLabels, alphaSliders, firstIndex: 1, secondtIndex: 2)
            changeAlpha(of: logoImageViews, and: titleLabels, subcriptIndex: 0, with: sender)
        case secondarySlider:
            reset(logoImageViews, titleLabels, alphaSliders, firstIndex: 0, secondtIndex: 2)
            changeAlpha(of: logoImageViews, and: titleLabels, subcriptIndex: 1 ,with: sender)
        default:
            reset(logoImageViews, titleLabels, alphaSliders, firstIndex: 0, secondtIndex: 1)
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
        label[subcriptIndex].alpha = CGFloat(slider.value)
    }
    
    private func reset(
        _ image: [UIImageView],
        _ labels: [UILabel],
        _ sliders: [UISlider],
        firstIndex: Int,
        secondtIndex: Int
    ) {
        image[firstIndex].alpha = 0
        image[secondtIndex].alpha = 0
        labels[firstIndex].alpha = 0
        labels[secondtIndex].alpha = 0
        sliders[firstIndex].value = 0
        sliders[secondtIndex].value = 0
    }
}




