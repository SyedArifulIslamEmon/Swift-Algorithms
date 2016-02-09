//
//  Utils.swift
//  SwiftAlgorithms
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import Foundation

public struct Utils {
    public static func isArraySorted<T: Comparable>(array: [T]) -> Bool{
        for i in 1..<array.count{
            if !(array[i - 1] < array[i]){
                return false
            }
        }
        return true
    }
}