//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Akshay Jha on 30/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Pies!", color: UIColor.blue)
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
            
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat Less Pies!", color: UIColor.red)
        }
      
    }
    
    func getBMIValue() -> String {
        let bmiToDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalPlace
    }
    func getAdvice() ->String{
        return bmi?.advice ?? "No Advice"
    }
    func getColor() ->UIColor{
        return bmi?.color ?? UIColor.black
    }


    
}
