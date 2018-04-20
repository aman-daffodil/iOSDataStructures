//
//  Stack.swift
//  Stack
//

import Foundation

//func +=<ElementType>( _ s:inout Stack<ElementType>,elements:[ElementType]) {
//
//    for element in elements {
//        s.push(element)
//    }
//}

prefix operator ~

prefix func ~<ElementType>(elements:[ElementType])->Stack<ElementType>{
    return Stack<ElementType>(elements)
}

func &=<ElementType>(_ s:Stack<ElementType>,elements:[ElementType])->Stack<ElementType> {
    
    return Stack<ElementType>(elements)
}


protocol Stackable {
    
    associatedtype T
    mutating func push(_ element:T);
    mutating func pop()->T?;
    func getNext() -> T?;
    func isEmpty() -> Bool;
}

struct Stack<T>:Stackable {

    private var stackElements:[T] = []
    
    init(_ elements:[T]) {
        self.stackElements = elements
    }
    
    mutating func push(_ element:T) {
        stackElements.append(element)
    }
    
    mutating func pop()->T? {
        if let _ = self.stackElements.last {
            return self.stackElements.removeLast()
        }
        return nil
    }
    
    func getNext() -> T? {
        if let lastElement = self.stackElements.last {
            return lastElement
        }
        return nil
    }
    
    func isEmpty() -> Bool {
        return stackElements.count <= 0 ? true : false
    }
    
    fileprivate mutating func empty() {
        self.stackElements = []
    }
}
