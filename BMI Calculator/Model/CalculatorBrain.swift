//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by William Daniel da Silva Kuhs on 19/02/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(heigth: Float, weigth: Float) {
        let bmiValue = weigth / pow(heigth, 2)
        bmi = BMI(value: bmiValue)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice found!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .red
    }
}
