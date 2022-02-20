//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weigthLabel: UILabel!
    @IBOutlet weak var weigthSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func weigthSliderValueChanged(_ sender: UISlider) {
        weigthLabel.text = String(format: "%.0fKg", sender.value)
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let heigth = heightSlider.value
        let weigth = weigthSlider.value
        
        calculatorBrain.calculateBMI(heigth: heigth, weigth: weigth)
        
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVc = segue.destination as! ResultsViewController
            destinationVc.bmiValue = calculatorBrain.getBMIValue()
            destinationVc.advice = calculatorBrain.getAdvice()
            destinationVc.color = calculatorBrain.getColor()
        }
    }
}

