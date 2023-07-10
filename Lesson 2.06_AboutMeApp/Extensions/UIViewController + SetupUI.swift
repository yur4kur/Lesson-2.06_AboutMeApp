//
//  UIViewController + SetupUI.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 10.07.2023.
//

import UIKit

extension UIViewController {
    func setupLabels(
        _ titles: [UILabel],
        _ data: [UILabel],
        with entries: [Entry]
    ) -> Void {
        var index = 0
        entries.forEach { entry in
            titles[index].text = entry.title.entry
            data[index].text = entry.description.entry
            index += 1
        }
    }
    
    func setupImagesAndLabels(
        _ images: [UIImageView] ,
        _ labels: [UILabel],
        with entries: [Entry]
    ) -> Void {
        var index = 0
        entries.forEach { entry in
            labels[index].text = entry.title.entry
            images[index].image = UIImage(named: entry.description.entry)
            index += 1
        }
    }
}

