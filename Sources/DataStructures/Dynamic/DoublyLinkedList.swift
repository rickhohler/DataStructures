//
//  DoublyListedList.swift
//  
//
//  Created by Rick Hohler on 11/21/22.
//

import Foundation

class DoublyLinkedList<T> {

    class Node {
        var value: T
        var next: Node
        var previous: Node
        
        init(_ value: T, next: Node, previous: Node) {
            self.value = value
            self.next = next
            self.previous = previous
        }
    }
}
