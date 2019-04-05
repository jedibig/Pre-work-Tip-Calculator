//
//  ViewController.swift
//  test
//
//  Created by Kay Lab on 4/5/19.
//  Copyright © 2019 JB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapg(_ sender: Any) {
        print("Hello!")
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        let tipPer = [0.1,0.15,0.18]
        
        let tipAmount = bill*tipPer[tipControl.selectedSegmentIndex]
        
        tip.text = String(format: "$%.2f", tipAmount)
        total.text = String(format: "$%.2f", (bill+tipAmount))
    }
    
}

