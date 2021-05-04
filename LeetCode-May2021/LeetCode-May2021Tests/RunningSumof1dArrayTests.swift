//
//  03.05.swift
//  LeetCode-May2021Tests
//
//  Created by Jakub Opała on 04/05/2021.
//

import XCTest
@testable import LeetCode_May2021

class RunningSumof1dArrayTests: XCTestCase {

    func testRunningSumof1dArrayLCTestData1() throws {
        let sut = RunningSumof1dArray()
        let testData = [1,2,3,4]
        let expectedResult = [1,3,6,10]
        let result = sut.runningSum(testData)
        XCTAssertNotNil(result, "Should be not nil.")
        XCTAssertEqual(result, expectedResult, "Results should be the same")
    }

    func testRunningSumof1dArrayLCTestData2() throws {
        let sut = RunningSumof1dArray()
        let testData = [1,1,1,1,1]
        let expectedResult = [1,2,3,4,5]
        let result = sut.runningSum(testData)
        XCTAssertNotNil(result, "Should be not nil.")
        XCTAssertEqual(result, expectedResult, "Results should be the same")
    }
    
    func testRunningSumof1dArrayLCTestData3() throws {
        let sut = RunningSumof1dArray()
        let testData = [3,1,2,10,1]
        let expectedResult = [3,4,6,16,17]
        let result = sut.runningSum(testData)
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
