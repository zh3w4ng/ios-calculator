//
//  ViewController.swift
//  Calculator
//
//  Created by Zhe Wang on 28/8/16.
//  Copyright © 2016 Zhe Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    @IBAction func performOperation(sender: UIButton) {
        let mathSymbol = sender.currentTitle!
        if mathSymbol == "π" {
            display.text = String(M_PI)
        }
    }
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        var currentDisplay = display.text!
        if currentDisplay == "0" {
            currentDisplay = ""
        }
        display.text = currentDisplay + String(digit)
    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

