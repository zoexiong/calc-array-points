//
//  main.swift
//  CalcArrayPoints
//
//  Created by Just on 16/10/9.
//  Copyright © 2016年 Just. All rights reserved.
//

import Foundation


//Cal
func add(left:Int, right:Int) -> Int{
    let result = left + right
    return result
}

func subtract(left:Int, right:Int) -> Int{
    let result = left - right
    return result
}

func multiply(left:Int, right:Int) -> Int{
    let result = left * right
    return result
}

//Below code can be used for x/0 error handling, but needs to be unwraped before use the result

//func divide(left:Int, right:Int) -> Int? {
//    if right != 0 {
//  let result = left / right
//        return result
//    } else {
//       print("Invalid Input, right can not be 0")
//        return nil
//    }
//}

//func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int?) -> Int? {
//    return operation(left, right)!
//}

func divide(left:Int, right:Int) -> Int {
           let result = left / right
        return result
  }

func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}
// why the labels "left:" and "right:" are not needed here?





//Array
let testArray = [1,2,3,4,5]

func add(array:[Int]) -> Int {
let result = array.reduce(0,+)
    return result
}

func multiply(array:[Int]) -> Int{
return array.reduce(1,*)
}

func count(array:[Int]) -> Int {
    return array.reduce(0){$0+$1*0+1}
}

func average(array:[Int]) -> Int {
    let count = array.count
    return array.reduce(0,+)/count
}
//why use reduce to count(in the unit test)? It's more complicated

func reduce(array: [Int], operation: ([Int]) -> (Int)) -> Int {
    return operation(array)
}




//Points

let testPoint1 = (2, 6)
let testPoint2 = (5, 4)
let dictionaryIntTest1 = [
    "x" : 2,
    "y" : 6
]
let dictionaryIntTest2 = [
    "x" : 5,
    "y" : 4
]
let dictionaryDoubleTest1 = [
    "x" : 2.6,
    "y" : 3.5
]
let dictionaryDoubleTest2 = [
    "x" : 5.5,
    "y" : 4.5
]


func add(p1: (Int,Int), p2: (Int,Int)) -> (Int,Int){
return (p1.0+p2.0,p1.1+p2.1)
}

func subtract(p1: (Int,Int), p2: (Int,Int)) -> (Int,Int){
    return (p1.0-p2.0,p1.1-p2.1)
}

func add(p1: [String:Int], p2: [String:Int]) -> [String:Int]{
    return ["x":(p1["x"])!+(p2["x"])!,"y": (p1["y"])!+(p2["y"])!]
}

func subtract(p1: [String:Int], p2: [String:Int]) -> [String:Int]{
    return ["x":(p1["x"])!-(p2["x"])!,"y": (p1["y"])!-(p2["y"])!]
}

func add(p1: [String:Double], p2: [String:Double]) -> [String:Double]{
    return ["x":(p1["x"])!+(p2["x"])!,"y": (p1["y"])!+(p2["y"])!]
}

func subtract(p1: [String:Double], p2: [String:Double]) -> [String:Double]{
    return ["x":(p1["x"])!-(p2["x"])!,"y": (p1["y"])!-(p2["y"])!]
}

func add(p1: [String:Double]?, p2: [String:Double]?) -> [String:Double]?{
    if p1 == nil{
    return nil
    } else if p2 == nil{
    return nil
    }
    else if p1?["x"] == nil{
    return nil
    }else if p1?["y"] == nil {
    return nil
    } else if p2?["x"] == nil{
    return nil
    } else if p2?["y"] == nil{
    return nil
    } else {
    return ["x":(p1?["x"])!+(p2?["x"])!,"y": (p1?["y"])!+(p2?["y"])!]
    }
}

func subtract(p1: [String:Double]?, p2: [String:Double]?) -> [String:Double]?{
    if p1 == nil{
        return nil
    } else if p2 == nil{
        return nil
    }
    else if p1?["x"] == nil{
        return nil
    }else if p1?["y"] == nil {
        return nil
    } else if p2?["x"] == nil{
        return nil
    } else if p2?["y"] == nil{
        return nil
    } else {
        return ["x":(p1?["x"])!-(p2?["x"])!,"y": (p1?["y"])!-(p2?["y"])!]
    }
}





//for test

//Cal

let addGenericResult = mathOperation(left: 4, right: 5, operation: add)
print(addGenericResult)


//Array

print(count(array:testArray))
print(average(array:testArray))

let addResult = add(array: testArray)
print(addResult)

let addResultGeneric = reduce(array: testArray, operation: multiply)
print(addResultGeneric)

let multiplyResult = multiply(array: testArray)
print(multiplyResult)




//Points

let addPointDictionaryResult = add(p1: dictionaryIntTest1, p2: dictionaryIntTest2)
print(addPointDictionaryResult)

let addPointResult = subtract(p1: testPoint1, p2: testPoint2)
print(addPointResult)

let addPointDoubleDictionaryTest = add(p1: dictionaryDoubleTest1, p2: dictionaryDoubleTest2)
print(addPointDoubleDictionaryTest)

let subtractPointDoubleDictionaryTest = subtract(p1: dictionaryDoubleTest1, p2: dictionaryDoubleTest2)
print(subtractPointDoubleDictionaryTest)

let nilEntryDict : Dictionary<String, Double>? = nil
let xNilEntryDict : Dictionary<String, Double>? = ["y": 1.0]
let yNilEntryDict : Dictionary<String, Double>? = ["x": 1.0]

print(add(p1: nilEntryDict, p2: dictionaryDoubleTest2))
print(add(p1: xNilEntryDict, p2: dictionaryDoubleTest2))
print(add(p1: yNilEntryDict, p2: dictionaryDoubleTest2))
print(add(p1: xNilEntryDict, p2: yNilEntryDict))

print(subtract(p1: nilEntryDict, p2: dictionaryDoubleTest2))
print(subtract(p1: xNilEntryDict, p2: dictionaryDoubleTest2))
print(subtract(p1: yNilEntryDict, p2: dictionaryDoubleTest2))
print(subtract(p1: xNilEntryDict, p2: yNilEntryDict))



