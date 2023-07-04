//
//  PersonalViewController.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 30.06.2023.
//

import UIKit

final class PersonalViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet var personalImage: UIImageView!
    
    @IBOutlet var titleLabels: [UILabel]!
    @IBOutlet var dataLabels: [UILabel]!
    
    //MARK: Private properties
    private let entries = Entry.getPersonalData()
    
    //MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels(titleLabels, dataLabels, with: entries)
    }
    
    override func viewDidLayoutSubviews() {
        personalImage.layer.cornerRadius = personalImage.frame.width / 2
    }
}

    //MARK: Extensions
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
