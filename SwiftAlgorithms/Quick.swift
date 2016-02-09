//
//  Quick.swift
//  SwiftAlgorithms
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import Foundation

public struct QuickSort{
    public static func sort<T: Comparable>(inout a: [T]){
        return sort(&a, lo: 0, hi: a.count - 1)
    }
    
    private static func partition<T: Comparable>(inout a: [T], lo: Int, hi: Int) -> Int{
        var (i, j) = (lo, hi + 1)
        while (true){
            while a[++i] < a[lo]{
                if i == hi{
                    break
                }
            }
            
            while a[lo] < a[--j]{
                if j == lo{
                    break
                }
            }
            
            if i >= j {
                break
            }
            
            swap(&a[j], &a[i])
        }
        swap(&a[j], &a[lo])
        return j
    }
    
    private static func sort<T: Comparable>(inout a: [T], lo: Int, hi: Int){
        guard lo < hi else {
            return
        }
        let j = partition(&a, lo: lo, hi: hi)
        sort(&a, lo: lo, hi: j - 1)
        sort(&a, lo: j + 1, hi: hi)
    }
}