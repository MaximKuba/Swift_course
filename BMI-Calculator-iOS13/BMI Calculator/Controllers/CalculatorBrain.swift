//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Maxim Kuba on 28.02.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    
    func getAdvice() -> String {
        return bmi?.advice ?? "no advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
    mutating func calculateBMI(height: Float, weight: Float)
    {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) )
            print(bmi?.advice ?? "lol1")
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "you goooood", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1) )
            print(bmi?.advice ?? "lol2")
        } else {
            bmi = BMI(value: bmiValue, advice: "eat less pies ", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) )
            print(bmi?.advice ?? "lol3")
        }
        
    }
 
     
}
