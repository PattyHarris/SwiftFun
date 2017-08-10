//
//  ViewController.swift
//  SwiftFun
//
//  Created by Patty Harris on 8/8/17.
//  Copyright © 2017 Patty Harris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var additionSwitch: UISwitch!
    
    var buttonTapCount: Int = 0
    
    let originalButtonText = "Hello World"
    let originalBackground = UIColor.white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Moved to button action
        // Test - change the background to red
        view.backgroundColor = UIColor.red
        
        // Test - change text of label
        myLabel.text = "This is cool!"
         */
    }

    @IBAction func myButtonDidTap(_ sender: Any) {
        
        // Testing booleans
        let addition = additionSwitch.isOn
        var sum : Double = 0.0

        // Testing conversion of types
        if addition {
            sum = Double(topTextField.text!)! + Double(bottomTextField.text!)!
        }
        else {
            sum = Double(topTextField.text!)! - Double(bottomTextField.text!)!
        }
        
        myLabel.text = String("Total: \(sum)")
        
        // Commented out to test type conversion using the
        // addition of 2 text felds.
        /*
        if buttonTapCount == 0 {
            
            view.backgroundColor = originalBackground
            myLabel.text = originalButtonText
        }
        
        buttonTapCount += 1
        
        if buttonTapCount > 9 {
            // Test - change the background to red
            view.backgroundColor = UIColor.red
            
            // Test - change text of label
            myLabel.text = "This is cool!"
            
            buttonTapCount = 0
        }
        
         // Added to test git
         print(buttonTapCount)
         */
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

