//
//  NonDecreasingArrayTests.swift
//  LeetCode-May2021Tests
//
//  Created by Jakub Opała on 04/05/2021.
//

import XCTest
@testable import LeetCode_May2021

class NonDecreasingArrayTests: XCTestCase {

    func testNonDecreasingArrayLCTestData1() throws {
        let sut = NonDecreasingArray()
        let testData = [4,2,3]
        let expectedResult = true
        let result = sut.checkPossibility(testData)
        XCTAssertNotNil(result, "Should be not nil.")
        XCTAssertEqual(result, expectedResult, "Results should be the same")
    }
    
    func testNonDecreasingArrayLCTestData2() throws {
        let sut = NonDecreasingArray()
        let testData = [4,2,1]
        let expectedResult = false
        let result = sut.checkPossibility(testData)
        XCTAssertNotNil(result, "Should be not nil.")
        XCTAssertEqual(result, expectedResult, "Results should be the same")
    }
   
    
    func testNonDecreasingArrayLCTestData3() throws {
        let sut = NonDecreasingArray()
        let testData = [3,4,2,3]
        let expectedResult = false
        let result = sut.checkPossibility(testData)
        XCTAssertNotNil(result, "Should be not nil.")
        XCTAssertEqual(result, expectedResult, "Results should be the same")
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
