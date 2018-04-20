//
//  ViewController.swift
//  Stack
//
//

import UIKit

class ViewController: UIViewController {
    
    var stack:Stack<Int> = ~[1,2]
    var queue:Queue<Int> = ~[1,2]
    lazy var lastTime:Int = Date().nanosecondsSince1970
    
    //MARK:- Life cycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.testStackAndQueue()
        self.testBinarySearchTree()
    }
    
    
    //MARK:- memory warning method
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- Stack and Queue Test methods
    
    func testStackAndQueue(){
        stack.push(3)
        stack.push(4)
        print(stack.pop() ?? -1)
        
        if let next = stack.getNext() {
            print(next)
        }
        
        queue.insert(3)
        print(queue.delete() ?? -1)
        
        if let next = queue.getNext() {
            print(next)
        }
    }
    
    //MARK:- Binary search tree Test method
    
    func testBinarySearchTree() {
        
        var bst:BinarySearchTree = BinarySearchTree()
        
        bst.insert(&bst.root, data: 10)
        bst.insert(&bst.root, data: 20)
        bst.insert(&bst.root, data: 8)
        bst.insert(&bst.root, data: 6)
        bst.insert(&bst.root, data: 7)
        bst.insert(&bst.root, data: 8)
        bst.insert(&bst.root, data: 8)
        bst.insert(&bst.root, data: 8)
        bst.insert(&bst.root, data: 8)
        
        print("inorderTraversal")
        bst.inorderTraversal(bst.root)
        
        print("preorderTraversal")
        bst.preorderTraversal(bst.root)
        
        print("postorderTraversal")
        bst.postorderTraversal(bst.root)
    }
    
    
    //MARK:- Time Utility.
    func printTimeTaken(_ from:Int) {
        print(Date().nanosecondsSince1970-from)
        lastTime = Date().nanosecondsSince1970
    }

}

