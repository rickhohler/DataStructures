//
//  Insertion.swift
//  
//
//  Created by Rick Hohler on 11/21/22.
//

import Foundation

extension Sort {
    static func insertion<A: Comparable>(_ array: inout [A]) {
        let N = array.count
        var i = 1
        while i < N {
            let current = array[i]
            var j = i - 1
            while j >= 0 && array[j] > current {
                array[j + 1] = array[j]
                j = j - 1
            }
            array[j + 1] = current
            i = i + 1
        }
    }
}
