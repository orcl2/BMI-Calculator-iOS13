//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by William Daniel da Silva Kuhs on 19/02/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    mutating func calculateBMI(heigth: Float, weigth: Float) {
        bmi = weigth / pow(heigth, 2)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi ?? 0.0)
    }
}
