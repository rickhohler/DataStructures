//
//  Linear.swift
//  
//
//  Created by Rick Hohler on 11/21/22.
//

import Foundation

extension Search {
    static func linear<A: Comparable>(_ array: [A], target: A) -> Int {
        var i = 0
        while i < array.count {
            if array[i] == target { return i }
            i = i + 1
        }
        return Search.notFound
    }
}
