//
//  ViewController.swift
//  New Tip Calculator
//
//  Created by Brian Qi on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var Input: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmount: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(Input.text!) ?? 0
        let tipPercentages = [0.15, 0.2, 0.25]
        let tip = bill * tipPercentages[tipAmount.selectedSegmentIndex]
        let total = bill + tip
        totalLabel.text = String(format:"$%.2f",total)
        
        tipLabel.text = String(format:"$%.2f",tip)
    }
    
}

