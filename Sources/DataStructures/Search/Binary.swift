//
//  Binary.swift
//  
//
//  Created by Rick Hohler on 11/21/22.
//

import Foundation

extension Search {
    static func binary<A: Comparable>(_ array: [A], target: A) -> Int {
        let higher = array.count - 1
        var lower = 0
        while lower <= higher {
            let middle = Int(floor(Double(higher+lower) / 2.0))
            if array[middle] == target { return middle }
            if array[middle] < target { lower = middle + 1 }
            else { lower = middle - 1 }
        }
        return Search.notFound
    }
}
