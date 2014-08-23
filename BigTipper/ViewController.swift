//
//  ViewController.swift
//  BigTipper
//
//  Created by Jessica Jarvis on 8/14/14.
//  Copyright (c) 2014 Jessica Jarvis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!

    @IBOutlet weak var twoPeople: UILabel!
    
    @IBOutlet weak var threePeople: UILabel!
    
    @IBOutlet weak var fourPeople: UILabel!
    
    @IBOutlet weak var fivePeople: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        twoPeople.text = "$0.00"
        threePeople.text = "$0.00"
        fourPeople.text = "$0.00"
        fivePeople.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        var two = total / 2
        var three = total / 3
        var four = total / 4
        var five = total / 5
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        twoPeople.text = "$\(two)"
        threePeople.text = "$\(three)"
        fourPeople.text = "$\(four)"
        fivePeople.text = "$\(five)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        twoPeople.text = String(format: "$%.2f", two)
        threePeople.text = String(format: "$%.2f", three)
        fourPeople.text = String(format: "$%.2f", four)
        fivePeople.text = String(format: "$%.2f", five)
        
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
    
}

