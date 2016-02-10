//
//  QuickSort3Ways.swift
//  SwiftAlgorithms
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import Foundation

/**
 *  Quicksort using 3-ways partition
 */
public struct QuickSort3Ways {
    
    private static func sort<T: Comparable>(inout a: [T], lo: Int, hi: Int){
        guard lo < hi else {
            return
        }
        var (lt, gt) = (lo, hi)
        var i = lt
        let v = a[lo]
        while (i <= gt){
            if a[i] < v {
                Utils.exchange(&a, i++, lt++)
            }
            else if a[i] > v{
                Utils.exchange(&a, i, gt--)
            }
            else {
                i++
            }
        }
        sort(&a, lo: lo, hi: lt - 1)
        sort(&a, lo: gt + 1, hi: hi)
    }

    public static func sort<T: Comparable>(inout a: [T]){
        sort(&a, lo: 0, hi: a.count - 1)
    }
}