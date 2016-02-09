//
//  SelectionSort.swift
//  SwiftAlgorithms
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import Foundation

public struct Insertion {
    public static func sort<T: Comparable>(array: [T]) -> [T]{
        guard array.count > 1 else { return array }
        var a = array
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