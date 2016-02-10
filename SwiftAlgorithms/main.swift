//
//  main.swift
//  SwiftAlgorithms
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import Foundation


var array = [Int]()
while let a = readLine(stripNewline: true){
    array.append(Int(a)!)
}

QuickSort3Ways.sort(&array)


