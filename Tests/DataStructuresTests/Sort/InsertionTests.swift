//
//  InsertionTests.swift
//  
//
//  Created by Rick Hohler on 11/21/22.
//

import XCTest
@testable import DataStructures

final class InsertionTests: XCTestCase {
    
    func testSimple() throws {
        var array = [3, 5, 6, 9, 22, 15, 12, 2, 1, 10, 16]
        Sort.insertion(&array)
        DataStructuresTests.assertSortedArray(array)
    }

    func testSameValue() throws {
        let value = 10
        var array = Array(repeating: value, count: 20)
        Sort.insertion(&array)
        DataStructuresTests.assertSortedArray(array)
        let test = array.reduce(value, { (x, y) in
            return x == y ? value : 0
        })
        XCTAssertTrue(test == value)
    }
}
