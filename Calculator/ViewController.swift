//
//  ViewController.swift
//  Calculator
//
//  Created by mim K. on 5/13/2560 BE.
//  Copyright © 2560 mim K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var opr1: UITextField!

    @IBOutlet weak var opr2: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func onAdd(_ sender: Any) {
        let calculator = Calculator()
        let oper1 = Int(opr1.text!)
        let oper2 = Int(opr2.text!)
        let temp = calculator.add(oper1!,oper2!)
        resultLabel.text = "Result = \(temp)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

