import XCTest
@testable import SwiftUIMathsLogic  // Replace with your actual module name

class FibonacciTests: XCTestCase {

    var viewModel: FibonacciViewModel!

    override func setUp() {
        super.setUp()
        viewModel = FibonacciViewModel()
    }

    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    // Test Case 1: Generating Fibonacci for input 5
    func testFibonacciForFive() {
        let result = viewModel.generateFibonacci(n: 5)
        XCTAssertEqual(result, [0, 1, 1, 2, 3], "Fibonacci sequence for 5 is incorrect")
    }
    
    // Test Case 2: Generating Fibonacci for input 10
    func testFibonacciForTen() {
        let result = viewModel.generateFibonacci(n: 10)
        XCTAssertEqual(result, [0, 1, 1, 2, 3, 5, 8, 13, 21, 34], "Fibonacci sequence for 10 is incorrect")
    }
    
    // Test Case 3: Edge case - Fibonacci for input 1
    func testFibonacciForOne() {
        let result = viewModel.generateFibonacci(n: 1)
        XCTAssertEqual(result, [0], "Fibonacci sequence for 1 should be [0]")
    }
    
    // Test Case 4: Edge case - Fibonacci for input 2
    func testFibonacciForTwo() {
        let result = viewModel.generateFibonacci(n: 2)
        XCTAssertEqual(result, [0, 1], "Fibonacci sequence for 2 should be [0, 1]")
    }
    
    // Test Case 5: Edge case - Fibonacci for input 0
    func testFibonacciForZero() {
        let result = viewModel.generateFibonacci(n: 0)
        XCTAssertEqual(result, [], "Fibonacci sequence for 0 should be empty")
    }
    
    // Test Case 6: Edge case - Fibonacci for negative input
    func testFibonacciForNegative() {
        let result = viewModel.generateFibonacci(n: -3)
        XCTAssertEqual(result, [], "Fibonacci sequence for negative input should be empty")
    }
}
