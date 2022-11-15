//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Никита Швец on 13.12.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//


import UIKit

class CalculatorManager {
    
    var value: Float = 0.0
    var advice: String = ""
    var color: UIColor = .clear
    
    func calculateBMI(height:Float,weight:Float){
        let bmiValue = (weight / pow(height,2))
        switch bmiValue {
        case 0..<18.5:
            print("Underweight")
            value = bmiValue
            advice = "Eat more pies!"
            color = UIColor.blue
        case 18.5...24.9:
            print("Normal")
            value = bmiValue
            advice = "Fit as a fiddle!"
            color = UIColor.green
        default:
            print("Overweight")
            value = bmiValue
            advice = "Eat less pies!"
            color = UIColor.red
        }
    }
}
