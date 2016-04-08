//
//  main.swift
//  Euler-003-LargestPrimeFactor
//
//  Created by Joshua Kelley on 4/7/16.
//  Copyright © 2016 Joshua Kelley. All rights reserved.
//


/**
 
 Largest Prime Factor
 Project Euler : Problem 3
 
 * --------------------------------------------------
 Prompt:
 
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the 
 number 600851475143 ?
 
 * --------------------------------------------------
 
 Answer: 6857
 
 */

let number = 600851475143
var factors = [Int]()

let primeFactors = [Int]()
var currentNumber = number
var stopper = 2
var i = 2

while i < (number / stopper) {
    if currentNumber % i == 0 {
        stopper = i
        currentNumber = currentNumber / i
        factors.append(i)
        //factors.append(currentNumber)
        print("\(factors)")
    }
    i += 1//(factors.count < 2) ? 1 : factors[factors.count - 2]
}
print(factors)

//let number = 13195
//
//var factors = [1,number]
//
//let primeFactors = [Int]()
//var currentNumber = number
//
//for i in 2...(number / 3){
//    
//    if currentNumber % i == 0 {
//        currentNumber = currentNumber / i
//        factors.append(i)
//    }
//    
//}
//
//func isAPrime(number: Int) -> Bool {
//    
//}

// Best so far 453


// 17
// 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17
