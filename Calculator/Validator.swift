//
//  Validator.swift
//  Calculator
//
//  Created by mim K. on 5/13/2560 BE.
//  Copyright © 2560 mim K. All rights reserved.
//

import Foundation

protocol Validator {
    func validate(number: String) -> Bool
}

class NumberValidator: Validator {
    func validate(number: String) -> Bool {
        return number.isNumber
    }
}

class EmptyValidator: Validator {
    func validate(number: String) -> Bool {
        return number.isEmpty
    }
}




/*class Validator {
    func isNumber(number: String) -> Bool {
        return number.isNumber
    }
    
    func isEmpty(number: String) -> Bool {
        return number.isEmpty
    }
}*/


extension String  {
    var isNumber : Bool {
        get{
            return !self.isEmpty && self.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
        }
    }
}
