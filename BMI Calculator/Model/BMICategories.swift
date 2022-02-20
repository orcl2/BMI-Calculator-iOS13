//
//  BMICategories.swift
//  BMI Calculator
//
//  Created by William Daniel da Silva Kuhs on 20/02/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

enum BMICategories: ClosedRange<Float> {    
    static let underweigth = ..<18.5
    static let normal = 18.5...24.9
    static let overweigth = 25...100
}
