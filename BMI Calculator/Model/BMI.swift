//
//  BMI.swift
//  BMI Calculator
//
//  Created by William Daniel da Silva Kuhs on 20/02/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BMI {
    let value: Float
    
    var advice: String {
        get {
            switch(value) {
            case ..<18.5:
                return "Eat more pies."
            case 18.5..<25:
                return "Fit as a fiddle!"
            case 25...:
                return "Eat less pies."
            default:
                return "BMI value out of range."
            }
        }
    }
    
    var color: UIColor {
        get {
            switch(value) {
                case ..<18.5:
                return .blue
            case 18.5..<25:
                return .green
            case 25...:
                return .orange
            default:
                return .red
            }
        }
    }
    
    init(value: Float) {
        self.value = value
    }
}
