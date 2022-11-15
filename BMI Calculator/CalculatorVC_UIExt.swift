//
//  CalculatorVC+UIExt.swift
//  BMI Calculator
//
//  Created by Никита Швец on 15.11.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

extension CalculatorVC {
    
    func configureCalculatorVCUI() {
        configureBackgroundImage()
        configureTopLabel()
        configureCalculateButton()
        configureWeightSlider()
        configureLeftWeightLabel()
        configureRightWeightLabel()
        configureHeightSlider()
        configureLeftHeightLabel()
        configureRightHeightLabel()
    }
    
    func configureBackgroundImage() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.image = UIImage(named: "calculate_background")
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func configureTopLabel() {
        view.addSubview(topLabel)
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        topLabel.text = "CALCULATE\nYOUR BMI"
        topLabel.textColor = .darkGray
        topLabel.font = .systemFont(ofSize: 35, weight: .bold)
        topLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        topLabel.numberOfLines = 0
        NSLayoutConstraint.activate([
            topLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -120),
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
    
    func configureCalculateButton() {
        view.addSubview(calculateButton)
        calculateButton.addTarget(self, action: #selector(presentRusultVC), for: .touchUpInside)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.setTitle("CALCULATE", for: .normal)
        calculateButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        calculateButton.setTitleColor(.white, for: .normal)
        calculateButton.layer.cornerRadius = 8
        calculateButton.backgroundColor = .blue
        calculateButton.alpha = 0.7
        NSLayoutConstraint.activate([
            calculateButton.heightAnchor.constraint(equalToConstant: 50),
            calculateButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            calculateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func configureWeightSlider() {
        view.addSubview(weightSlider)
        weightSlider.translatesAutoresizingMaskIntoConstraints = false
        weightSlider.maximumValue = 200
        weightSlider.value = 100
        weightSlider.addTarget(self, action: #selector(weightSliderChanged), for: .valueChanged)
        NSLayoutConstraint.activate([
            weightSlider.heightAnchor.constraint(equalToConstant: 60),
            weightSlider.bottomAnchor.constraint(equalTo: calculateButton.topAnchor, constant: -10),
            weightSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            weightSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    @objc func weightSliderChanged() {
        let value = String(format: "%.0f", weightSlider.value)
        rightWeightLabel.text = "\(value)Kg"
    }
    
    func configureLeftWeightLabel() {
        view.addSubview(leftWeightLabel)
        leftWeightLabel.translatesAutoresizingMaskIntoConstraints = false
        leftWeightLabel.text = "Weight"
        leftWeightLabel.textColor = .darkGray
        leftWeightLabel.font = .systemFont(ofSize: 17, weight: .light)
        NSLayoutConstraint.activate([
            leftWeightLabel.bottomAnchor.constraint(equalTo: weightSlider.topAnchor, constant: 0),
            leftWeightLabel.leadingAnchor.constraint(equalTo: weightSlider.leadingAnchor)
        ])
    }
    
    func configureRightWeightLabel() {
        view.addSubview(rightWeightLabel)
        rightWeightLabel.translatesAutoresizingMaskIntoConstraints = false
        rightWeightLabel.text = "100Kg"
        rightWeightLabel.textColor = .darkGray
        rightWeightLabel.font = .systemFont(ofSize: 17, weight: .light)
        NSLayoutConstraint.activate([
            rightWeightLabel.bottomAnchor.constraint(equalTo: weightSlider.topAnchor, constant: 0),
            rightWeightLabel.trailingAnchor.constraint(equalTo: weightSlider.trailingAnchor)
        ])
    }
    
    func configureHeightSlider() {
        view.addSubview(heightSlider)
        heightSlider.addTarget(self, action: #selector(heightSliderChanged), for: .valueChanged)
        heightSlider.translatesAutoresizingMaskIntoConstraints = false
        heightSlider.maximumValue = 3
        heightSlider.value = 1.5
        NSLayoutConstraint.activate([
            heightSlider.heightAnchor.constraint(equalToConstant: 60),
            heightSlider.bottomAnchor.constraint(equalTo: weightSlider.topAnchor, constant: -30),
            heightSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            heightSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    @objc func heightSliderChanged() {
        let value = String(format: "%.2f", heightSlider.value)
        rightHeightLabel.text = "\(value)m"
    }
    
    
    func configureLeftHeightLabel() {
        view.addSubview(leftHeightLabel)
        leftHeightLabel.translatesAutoresizingMaskIntoConstraints = false
        leftHeightLabel.text = "Height"
        leftHeightLabel.textColor = .darkGray
        leftHeightLabel.font = .systemFont(ofSize: 17, weight: .light)
        NSLayoutConstraint.activate([
            leftHeightLabel.bottomAnchor.constraint(equalTo: heightSlider.topAnchor, constant: 0),
            leftHeightLabel.leadingAnchor.constraint(equalTo: heightSlider.leadingAnchor)
        ])
    }
    
    func configureRightHeightLabel() {
        view.addSubview(rightHeightLabel)
        rightHeightLabel.translatesAutoresizingMaskIntoConstraints = false
        rightHeightLabel.text = "1,5m"
        rightHeightLabel.textColor = .darkGray
        rightHeightLabel.font = .systemFont(ofSize: 17, weight: .light)
        NSLayoutConstraint.activate([
            rightHeightLabel.bottomAnchor.constraint(equalTo: heightSlider.topAnchor, constant: 0),
            rightHeightLabel.trailingAnchor.constraint(equalTo: heightSlider.trailingAnchor)
        ])
    }
    
    
}
