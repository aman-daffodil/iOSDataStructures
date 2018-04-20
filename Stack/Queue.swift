//
//  Queue.swift
//  Stack
//
//

import Foundation

prefix func ~<ElementType>(elements:[ElementType])->Queue<ElementType>{
    return Queue<ElementType>(elements)
}

protocol Queueable {
    
    associatedtype T
    mutating func insert(_ element:T);
    mutating func delete()->T?;
    func getNext() -> T?;
    func isEmpty() -> Bool;
}

struct Queue<T>: Queueable {

    var queueElements: [T] = []

    init(_ elements:[T]) {
        self.queueElements = elements
    }
    
    mutating func insert(_ element:T) {
        queueElements.append(element)
    }
    
    mutating func delete()->T? {
        if let _ = self.queueElements.first {
            return self.queueElements.removeFirst()
        }
        return nil
    }
    
    func getNext() -> T? {
        if let lastElement = self.queueElements.first {
            return lastElement
        }
        return nil
    }
    
    func isEmpty() -> Bool {
        return queueElements.count <= 0 ? true : false
    }
    
    fileprivate mutating func empty() {
        self.queueElements = []
    }

}

