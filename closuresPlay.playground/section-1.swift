// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 20
    func incrementer() -> Int {
        runningTotal += amount
        println(runningTotal)
        return runningTotal
    }
    println(runningTotal)
    return incrementer
}

var incrementByThree = makeIncrementer(forIncrement: 3)
incrementByThree()
incrementByThree()
incrementByThree = makeIncrementer(forIncrement: 5)
incrementByThree()
incrementByThree()
//makeIncrementer(forIncrement: 3)()