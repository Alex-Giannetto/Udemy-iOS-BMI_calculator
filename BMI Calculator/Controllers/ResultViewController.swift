//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Alex on 20/07/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = String(format: "%.1f", bmi?.value ?? "0.0")
        adviceLabel.text = bmi?.advice ?? ""
        view.backgroundColor = bmi?.color ?? UIColor.blue
    }

    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
