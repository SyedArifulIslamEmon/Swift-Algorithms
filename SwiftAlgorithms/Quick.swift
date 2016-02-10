//
//  Quick.swift
//  SwiftAlgorithms
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import Foundation

/**
 *  Original Quicksort
 */
public struct QuickSort{
    
    public static func sort<T: Comparable>(inout a: [T]){
        return sort(&a, lo: 0, hi: a.count - 1)
    }
    
    private static func partition<T: Comparable>(inout a: [T], lo: Int, hi: Int) -> Int{
        let pivot = a[(lo + hi) / 2]
        var (i, j) = (lo - 1, hi + 1)
        while (true){
            repeat{
                i++
            } while a[i] < pivot
            
            repeat{
                j--
            } while pivot < a[j]
            
            if i >= j{
                return j
            }
            
            swap(&a[j], &a[i])
        }
    }
    
    
    
    private static func sort<T: Comparable>(inout a: [T], lo: Int, hi: Int){
        guard lo < hi else {
            return
        }
        let j = partition(&a, lo: lo, hi: hi)
        sort(&a, lo: lo, hi: j)
        sort(&a, lo: j + 1, hi: hi)
    }
}