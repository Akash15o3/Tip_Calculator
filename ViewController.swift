//
//  ViewController.swift
//  tip
//
//  Created by SJSU International House on 8/1/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)    }
    
   @IBAction func calculateTip(_ sender: Any) {
////        get bill, calculate tip
    
    
////        update bill and label
    let bill = Double(billField.text!) ?? 0
    let tipPercentages=[0.1,0.15,0.2]
    let tipp = bill * tipPercentages[tipControl.selectedSegmentIndex]
    let total = bill + tipp
        tipLabel.text=String(format: "$%.2f", tipp)
    
        totalLabel.text=String(format: "$%.2f", total)
    }
}

