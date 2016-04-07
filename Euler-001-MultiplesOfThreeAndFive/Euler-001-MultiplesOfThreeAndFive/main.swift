//
//  main.swift
//  Euler-001-MultiplesOfThreeAndFive
//
//  Created by Joshua Kelley on 4/6/16.
//  Copyright © 2016 Joshua Kelley. All rights reserved.
//

/**
 
 Multiples of 3 and 5
 Project Euler : Problem 1
 
 * --------------------------------------------------
 Prompt: 
 
 If we list all the natural numbers below 10 that are 
 multiples of 3 or 5, we get 3, 5, 6 and 9. The sum 
 of these multiples is 23.
 
 Find the sum of all the multiples of 3 or 5 
 below 1000.
 
 * --------------------------------------------------
 
 Answer: 233168
 
 */

var integerArray = [Int]()
for i in 0 ..< 1000 {
    integerArray.append(i)
}
let multiples = integerArray.map() { ($0 % 3 == 0 || $0 % 5 == 0) ? $0 : 0 }
let sum = multiples.reduce(0) { $0 + $1 }

print("total: \(sum)")
