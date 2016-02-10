//
//  SelectionSort.swift
//  SwiftAlgorithms
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import Foundation

public struct Insertion {
    public static func sort<T: Comparable>(inout a: [T]){
        for i in 0..<a.count{
            var j = i
            while j > 0{
                if a[j] < a[j - 1]{
                    Utils.exchange(&a, j, j - 1)
                }
                --j
            }
        }
    }
}