//
//  SwiftAlgorithmTests.swift
//  SwiftAlgorithmTests
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import XCTest

class SwiftAlgorithmTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func selectionSort() {
        let numberOfIterations = 100
        for _ in 1...numberOfIterations {
            let a = randomArray(Int(arc4random_uniform(100)) + 1)
            let s = Insertion.sort(a)
            XCTAssertEqual(a.count, s.count)
            XCTAssert(Utils.isArraySorted(s))
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
