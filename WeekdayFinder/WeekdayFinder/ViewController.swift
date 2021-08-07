//
//  ViewController.swift
//  WeekdayFinder
//
//  Created by datmcl on 8/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateTextField.placeholder = "Enter the date"
        monthTextField.placeholder = "Enter the month"
        yearTextField.placeholder = "Enter the year"
    }

    @IBAction func findDay(_ sender: UIButton) {
    }
    
}

