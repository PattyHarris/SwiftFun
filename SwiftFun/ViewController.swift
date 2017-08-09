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
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

