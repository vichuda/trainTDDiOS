//
//  ValidatorTests.swift
//  Calculator
//
//  Created by mim K. on 5/13/2560 BE.
//  Copyright © 2560 mim K. All rights reserved.
//

import XCTest

@testable import Calculator
class ValidatorTests: XCTestCase {
    
    //let validator = Validator()
    
    func testIsNumber() {
        let validator = NumberValidator()
        XCTAssertTrue(validator.validate(number: "1"))
    }
    
    
    func testIsNotEmpty() {
        let validator = EmptyValidator()
        XCTAssertFalse(validator.validate(number: "1"))
    }
    
    func testIsEmpty() {
        let validator = EmptyValidator()
        XCTAssertTrue(validator.validate(number: ""))
    }
}
