//
//  BinaryTree.swift
//  Stack
//
//

import Foundation

class Node {
    
    var data        : Int!
    var leftChild   :Node? = nil
    var rightChild  :Node? = nil
    
    init(_ data:Int) {
        self.data = data
    }
}

struct BinarySearchTree {
    
    var root:Node? = nil
    
    func insert(_ node:inout Node?,data:Int) {

        guard let n = node else {
            node = Node(data)
            return
        }
        if(n.data > data) {
            self.insert(&n.leftChild,data: data);
        }else if(n.data < data){
            self.insert(&n.rightChild,data: data);
        }
    }
    
    func inorderTraversal(_ node:Node?) {
        if let n = node {
            inorderTraversal(n.leftChild)
            print(" \(n.data!) ")
            inorderTraversal(n.rightChild)
        }
    }
    
    func preorderTraversal(_ node:Node?) {
        if let n = node {
            print(" \(n.data!) ")
            preorderTraversal(n.leftChild)
            preorderTraversal(n.rightChild)
        }
    }
    
    func postorderTraversal(_ node:Node?) {
        if let n = node {
            postorderTraversal(n.leftChild)
            postorderTraversal(n.rightChild)
            print(" \(n.data!) ")
        }
    }
    
    func levelOrderTraversal(_ node:Node?) {
        
        print("TODO Level order traversal")
        if let n = node {
            print(n.data!)
        }
    }
}
