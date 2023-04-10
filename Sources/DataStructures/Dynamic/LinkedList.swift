//
//  LinkedList.swift
//  
//
//  Created by Rick Hohler on 11/21/22.
//

import Foundation

class LinkedList<T> {
    
    class Node {
        var value: T
        var next: Node?
        
        init(_ value: T, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }
    
    func lookup(head: Node?, element: Int) -> Node? {
        var current = head
        var count = 0
        while count < element && current != nil {
            current = current?.next
            count += 1
        }
        return current
    }
    
    func insertAfter(previous: inout Node, new: inout Node) {
        new.next = previous.next
        previous.next = new
    }

    func insert(head: Node?, index: Int, value: T) -> Node? {
        if index == 0 {
            return Node(value, next: head)
        }
        var current: Node? = head
        var previous: Node? = nil
        var count = 0
        while count < index && current != nil {
            previous = current
            current = current?.next
            count += 1
        }
        if count < index { return nil }     // invalid index error
        previous?.next = Node(value, next: previous?.next)
        return head
    }
    
    func delete(head: Node?, index: Int) -> Node? {
        if head == nil { return nil }
        if index == 0 {
            let newHead = head?.next
            head?.next = nil
            return newHead
        }
        var current = head
        var previous: Node? = nil
        var count = 0
        while count < index && current != nil {
            previous = current
            current = current?.next
            count += 1
        }
        if current != nil {
            previous?.next = current?.next
            current?.next = nil
        } else {
            return nil  // invalid index error.
        }
        return head
    }
}
