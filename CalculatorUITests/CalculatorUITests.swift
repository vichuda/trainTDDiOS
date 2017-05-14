//
//  CalculatorUITests.swift
//  CalculatorUITests
//
//  Created by mim K. on 5/13/2560 BE.
//  Copyright © 2560 mim K. All rights reserved.
//

import XCTest

class CalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
       
        continueAfterFailure = false
       
         //XCUIApplication().launch()
        
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
       

    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    
    func testExample() {
        //Arrange
        snapshot("0")
        let app = XCUIApplication()
        let opr1TextField = app.textFields["opr1"]
        opr1TextField.tap()
        opr1TextField.typeText("2")
        snapshot("1")
        
        let opr2TextField = app.textFields["opr2"]
        opr2TextField.tap()
        opr2TextField.typeText("4")
        snapshot("2")
        
        
        //Action
        app.buttons["addButton"].tap()
        
        //Assert
        let result = app.staticTexts["resultLabel"].label
        XCTAssertEqual("Result = 6",result)
        
        
        
    }
    
}
