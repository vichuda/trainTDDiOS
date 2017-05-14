//
//  Calculator.swift
//  Calculator
//
//  Created by mim K. on 5/13/2560 BE.
//  Copyright © 2560 mim K. All rights reserved.
//

import Foundation


class Calculator {
    
    func add(_ opr1: Int, _ opr2: Int) -> Int {
        return opr1 + opr2
    }
    
    func minus(_ opr1: Int, _ opr2: Int) -> Int {
        return opr1 - opr2
    }
    
    func multiply(_ opr1: Int, _ opr2: Int) -> Int {
        return opr1*opr2
    }
    
    func divide(_ opr1: Int, _ opr2: Int) -> (result: Float?,error: NSError?) {
        if (opr2 == 0) {
            let error = NSError(domain: "divide by zero",code: 1,userInfo: nil)
            return (result:nil, error: error)
        }
        return (result: Float(opr1/opr2),error: nil)
    }
    
   /* func divideUseStruct(_ opr1: Int, _ opr2: Int) -> dataResult {
        
    }*/
    
}

/*struct dataResult {
    var result: Float
    var error :NSError
}*/
