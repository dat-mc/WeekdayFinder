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
    }

    @IBAction func findDay(_ sender: UIButton) {
        if !dateTextField.hasText || !monthTextField.hasText || !yearTextField.hasText {
            resultLabel.text = "Fill the date"
            return
        }
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        
        if let day = dateTextField.text, let month = monthTextField.text, let year = yearTextField.text {
            dateComponents.day = Int(day)
            dateComponents.month = Int(month)
            dateComponents.year = Int(year)
            
            if dateComponents.isValidDate(in: calendar) {
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "EEEE"
                
                guard let date = calendar.date(from: dateComponents) else { return }
                
                let weekday = dateFormatter.string(from: date)
                resultLabel.text = weekday
            } else {
                resultLabel.text = "Invalid values"
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
