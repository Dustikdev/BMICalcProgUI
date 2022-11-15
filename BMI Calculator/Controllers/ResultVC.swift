//
//  ResultVC.swift
//  BMI Calculator
//
//  Created by Никита Швец on 15.11.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {

    let backgroundImageView = UIImageView()
    let yourResultLabel = UILabel()
    let scoreLabel = UILabel()
    let adviceLabel = UILabel()
    let recalculateButton = UIButton()
    var value: Float?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        configureResultVCUI()
        changeLabelsAndColor()
    }
    
    @objc func dismissResultVC() {
        self.dismiss(animated: true)
    }
    
    func changeLabelsAndColor() {
        scoreLabel.text = String(format: "%.1f", value ?? 0)
        adviceLabel.text = advice ?? ""
        backgroundImageView.backgroundColor = color
    }


}
