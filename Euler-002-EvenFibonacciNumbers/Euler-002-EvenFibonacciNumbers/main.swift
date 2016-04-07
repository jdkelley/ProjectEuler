//
//  main.swift
//  Euler-002-EvenFibonacciNumbers
//
//  Created by Joshua Kelley on 4/7/16.
//  Copyright © 2016 Joshua Kelley. All rights reserved.
//

/**
 
 Even Fibonacci Numbers
 Project Euler : Problem 2
 
 * --------------------------------------------------
 Prompt:
 
 Each new term in the Fibonacci sequence is generated 
 by adding the previous two terms. By starting 
 with 1 and 2, the first 10 terms will be:
 
 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
 
 By considering the terms in the Fibonacci sequence 
 whose values do not exceed four million, find the 
 sum of the even-valued terms.
 
 * --------------------------------------------------
 
 Answer:
    - Largest Fibonacci Number Found: 3524578
    - Total Sum of Even Fibonacci Numbers 
      Under 4,000,000 : 4613732
 
 */
var value1 = 1
var value2 = 1
var sum = 0
while value2 < 4000000 {
    let tmp = value2
    sum += (value2 % 2 == 0) ? value2 : 0
    value2 = value1 + value2
    value1 = tmp
}
 // Generate Fibonacci Sequence below 4,000,000

 // Sum even valued terms

 /* Notes:
      - Don't save all of the Fibonacci sequence.
      - Just find it, check if it is even and add
      that to the sum.
      - Maybe Reduce? Or just add to tally variable?
      - First, just generate list and reduce with % 2 == 0
      - Next, use recursion and add to tally when 
        value is % 2 == 0
      - Finally, see if there is some way to generate 
        without going O(n^2) and without going recursion.
 */


print("largest number: \(value1)")
print("Total: \(sum)")

