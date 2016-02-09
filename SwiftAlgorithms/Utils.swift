//
//  Utils.swift
//  SwiftAlgorithms
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import Foundation

public struct Utils {
    public static func isArraySorted<T: Comparable>(a: [T]) -> Bool{
        for i in 1..<a.count{
            if !(a[i - 1] < a[i]){
                return false
            }
        }
        return true
    }
    
}