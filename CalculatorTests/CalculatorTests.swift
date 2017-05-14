
import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    /*override func setUp() { //before
        super.setUp()
    }
    
    override func tearDown() {  //after
        super.tearDown()
    }*/
    
    let calculator = Calculator()
    
    func testAdd10with5_MustBe_15() {
        let result = calculator.add(10,5)
        XCTAssert(result == 15, "Result 10+5 = 15")
        
    }
    
    func testMinus15with5_MustBe_10() {
        let result = calculator.minus(15,5)
        XCTAssert(result == 10, "Result 15-5 = 10")
        
    }
    
    func testMultiply5with5_MustBe_25() {
        let result = calculator.multiply(5,5)
        XCTAssert(result == 25, "Result 5x5 = 25")
        
    }
    
    func testDivide5with5_MustBe_1() {
        let result = calculator.divide(5,5)
        XCTAssert(result.result == 1, "Result 5/5 = 1")
        XCTAssertNil(result.error)
        
    }
    
    func testDivide5with0_MustBe_error() {
        let result = calculator.divide(5,0)
        XCTAssertNil(result.result)
        XCTAssertEqual("divide by zero", result.error?.domain)
        
    }
    
    
   /* func testPerformanceExample() { //test แล้วออก report ให้ (อันไหนช้าเอามาลอง)
        self.measure {
            
        }
    }*/
    
}
