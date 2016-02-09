//
//  SwiftAlgorithmsTests.swift
//  SwiftAlgorithmsTests
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import XCTest

class SwiftAlgorithmsTests: XCTestCase {
    
    let numberOfIterationsPerSort = 100
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func insertionSort() {
        for _ in 1...numberOfIterationsPerSort {
            var a = randomArray(Int(arc4random_uniform(100)) + 1)
            let count = a.count
            Insertion.sort(&a)
            XCTAssertEqual(a.count, count)
            XCTAssert(Utils.isArraySorted(a))
        }
    }
    
    func selectionSort() {
        for _ in 1...numberOfIterationsPerSort {
            var a = randomArray(Int(arc4random_uniform(100)) + 1)
            let count = a.count
            Selection.sort(&a)
            XCTAssertEqual(a.count, count)
            XCTAssert(Utils.isArraySorted(a))
        }
    }
    
    func quickSort(){
        for _ in 1...numberOfIterationsPerSort {
            var a = randomArray(Int(arc4random_uniform(100)) + 1)
            let count = a.count
            QuickSort.sort(&a)
            XCTAssertEqual(a.count, count)
            XCTAssert(Utils.isArraySorted(a))

        }
    }
    
    private func randomArray(size: Int) -> [Int] {
        var a = [Int]()
        for _ in 1...size {
            a.append(Int(arc4random_uniform(1000)))
        }
        return a
    }
    
}
