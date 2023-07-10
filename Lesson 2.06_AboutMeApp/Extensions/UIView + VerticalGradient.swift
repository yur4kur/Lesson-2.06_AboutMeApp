//
//  Extensions.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 05.07.2023.
//

import UIKit

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

