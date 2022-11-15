//
//  CalculatorVC.swift
//  BMI Calculator
//
//  Created by Никита Швец on 15.11.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class CalculatorVC: UIViewController {
    
    let backgroundImageView = UIImageView()
    let topLabel = UILabel()
    let leftHeightLabel = UILabel()
    let rightHeightLabel = UILabel()
    let heightSlider = UISlider()
    let leftWeightLabel = UILabel()
    let rightWeightLabel = UILabel()
    let weightSlider = UISlider()
    let calculateButton = UIButton()
    
    let calculatorManager = CalculatorManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureCalculatorVCUI()
    }
    
    
    @objc func presentRusultVC() {
        calculatorManager.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        let vc = ResultVC()
        vc.value = calculatorManager.value
        vc.color = calculatorManager.color
        vc.advice = calculatorManager.advice
        present(vc, animated: true)
    }



}
