//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Akshay Jha on 30/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var BmiLabel: UILabel!
    @IBOutlet weak var AdviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        BmiLabel.text = bmiValue
        AdviceLabel.text = advice
        view.backgroundColor = color
        

    }
    

    @IBAction func RecalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true , completion: nil)
    }
    
}
