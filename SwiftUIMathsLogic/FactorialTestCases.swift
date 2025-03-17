import XCTest
@testable import SwiftUIMathsLogic  // Replace with your actual module name

class FactorialTests: XCTestCase {

    var viewModel: FactorialViewModel!

    override func setUp() {
        super.setUp()
        viewModel = FactorialViewModel()
    }

    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    // Test Case 1: Factorial series for input 5
    func testFactorialForFive() {
        let result = viewModel.generateFactorial(n: 5)
        XCTAssertEqual(result, [1, 2, 6, 24, 120], "Factorial series for 5 is incorrect")
    }
    
    // Test Case 2: Factorial series for input 7
    func testFactorialForSeven() {
        let result = viewModel.generateFactorial(n: 7)
        XCTAssertEqual(result, [1, 2, 6, 24, 120, 720, 5040], "Factorial series for 7 is incorrect")
    }
    
    // Test Case 3: Edge case - Factorial series for input 1
    func testFactorialForOne() {
        let result = viewModel.generateFactorial(n: 1)
        XCTAssertEqual(result, [1], "Factorial series for 1 should be [1]")
    }
    
    // Test Case 4: Edge case - Factorial series for input 0
    func testFactorialForZero() {
        let result = viewModel.generateFactorial(n: 0)
        XCTAssertEqual(result, [], "Factorial series for 0 should be empty")
    }
    
    // Test Case 5: Edge case - Factorial series for negative input
    func testFactorialForNegative() {
        let result = viewModel.generateFactorial(n: -3)
        XCTAssertEqual(result, [], "Factorial series for negative input should be empty")
    }
}

