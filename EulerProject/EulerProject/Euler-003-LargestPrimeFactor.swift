//
//  Euler-003-LargestPrimeFactor.swift
//  EulerProject
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
struct E003_LargestPrimeFactor {
    
    
    init() {
        print(" * ----------------------------------- * ")
        print(" * Please enter the number you wish to * ")
        print(" * find the largest prime of           * ")
        print(" * ----------------------------------- * ")
    }
    
    func run() {
        
        let number: Int
        if let input = readLine(stripNewline: true) {
            number = Int(input) ?? 600851475143
        } else {
            number = 17
            print("error")
        }
        
        //let number = 600851475143
        var factors = [Int]()
        
        var currentNumber = number
        var stopper = 2
        var i = 2
        
        while i < (number / stopper) {
            if currentNumber % i == 0 {
                stopper = i
                currentNumber = currentNumber / i
                factors.append(i)
                print("\(factors)")
            }
            i += 1
        }
        if let final = factors.last {
            print("Largest Prime of \(number) is \(final)")
        }
    }
    
}
