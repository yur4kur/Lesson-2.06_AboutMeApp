//
//  Extensions.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 05.07.2023.
//

import UIKit

// MARK: UIView
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 0.5)
        layer.insertSublayer(gradient, at: 0)
    }
}

// MARK: UIViewController
extension UIViewController {
    func setupLabels(
        _ titles: [UILabel],
        _ data: [UILabel],
        with entries: [Entry]) -> Void {
        var index = 0
            entries.forEach { entry in
                titles[index].text = entry.title.entry
                data[index].text = entry.description.entry
                index += 1
            }
    }
}


