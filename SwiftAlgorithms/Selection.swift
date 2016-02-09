//
//  Selection.swift
//  SwiftAlgorithms
//
//  Created by baga on 2/10/16.
//  Copyright © 2016 Khoi Lai. All rights reserved.
//

import Foundation

public struct Selection{
    public static func sort<T: Comparable>(inout a: [T]){
        for i in 0..<a.count{
            var min = i;
            for j in (i+1)..<a.count{
                if a[j] < a[min]{
                    min = j
                }
            }
            swap(&a[min], &a[i])
        }
    }
}