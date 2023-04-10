//
//  BinaryTests.swift
//
//
//  Created by Rick Hohler on 11/21/22.
//

import XCTest
@testable import DataStructures

final class BinaryTests: XCTestCase {
    
    func testFound() throws {
        let array = [2, 5, 6, 9, 11, 13, 16, 20, 31, 51, 69, 80]
        let result = Search.binary(array, target: 20)
        XCTAssertTrue(result == 7)
    }

    func testNotFound() throws {
        let array = [2, 5, 6, 9, 11, 13, 16, 20, 31, 51, 69, 80]
        let result = Search.binary(array, target: 15)
        XCTAssertTrue(result == -1)
    }
}
