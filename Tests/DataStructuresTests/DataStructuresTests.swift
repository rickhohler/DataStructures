//
//  DataStructuresTests.swift
//
//
//  Created by Rick Hohler on 11/21/22.
//

import XCTest
@testable import DataStructures

final class DataStructuresTests: XCTestCase {
    
    static func assertSortedArray<A: Comparable>(_ array: [A]) {
        for i in 1..<array.count {
            XCTAssertTrue(array[i-1] <= array[i])
        }
    }
}
