//
//  SelectionSort.swift
//  SwiftAlgorithms
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import Foundation

public struct Insertion {
    public static func sort<T: Comparable>(var a: [T]) -> [T]{
        guard a.count > 1 else { return a }
        for i in 0..<a.count{
            var j = i
            while j > 0{
                if a[j] < a[j - 1]{
                    swap(&a[j], &a[j - 1])
                }
                --j
            }
        }
        return [T]()
    }
}