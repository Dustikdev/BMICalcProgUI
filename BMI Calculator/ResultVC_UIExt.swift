//
//  ResultVC+UIExt.swift
//  BMI Calculator
//
//  Created by Никита Швец on 15.11.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit


extension ResultVC {
    
    func configureResultVCUI() {
        configureBackgroundImage()
        configureScoreLabel()
        configureYourResultLabel()
        configureAdviceLabel()
        configureRecalculateButton()
    }
    
    func configureBackgroundImage() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.image = UIImage(named: "result_background")
        backgroundImageView.alpha = 0.7
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func configureScoreLabel() {
        view.addSubview(scoreLabel)
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.text = "19.5"
        scoreLabel.textColor = .white
        scoreLabel.font = .systemFont(ofSize: 80, weight: .bold)
        NSLayoutConstraint.activate([
            scoreLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            scoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureYourResultLabel() {
        view.addSubview(yourResultLabel)
        yourResultLabel.translatesAutoresizingMaskIntoConstraints = false
        yourResultLabel.text = "YOUR RESULT"
        yourResultLabel.textColor = .white
        yourResultLabel.font = .systemFont(ofSize: 35, weight: .bold)
        NSLayoutConstraint.activate([
            yourResultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            yourResultLabel.bottomAnchor.constraint(equalTo: scoreLabel.topAnchor, constant: -20)
        ])
    }
    
    func configureAdviceLabel() {
        view.addSubview(adviceLabel)
        adviceLabel.translatesAutoresizingMaskIntoConstraints = false
        adviceLabel.text = "EAT SOME MORE SNACKS!"
        adviceLabel.textColor = .white
        adviceLabel.font = .systemFont(ofSize: 20, weight: .light)
        NSLayoutConstraint.activate([
            adviceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            adviceLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 20)
        ])
    }
    
    func configureRecalculateButton() {
        view.addSubview(recalculateButton)
        recalculateButton.addTarget(self, action: #selector(dismissResultVC), for: .touchUpInside)
        recalculateButton.translatesAutoresizingMaskIntoConstraints = false
        recalculateButton.setTitle("RECALCULATE", for: .normal)
        recalculateButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        recalculateButton.layer.cornerRadius = 8
        recalculateButton.backgroundColor = .systemGray4
        recalculateButton.setTitleColor(.darkGray, for: .normal)
        NSLayoutConstraint.activate([
            recalculateButton.heightAnchor.constraint(equalToConstant: 50),
            recalculateButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            recalculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            recalculateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    

}
