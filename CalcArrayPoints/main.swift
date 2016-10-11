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

//let addGenericResult = mathOperation(left: 4, right: 5, operation: add)
//print(addGenericResult)




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

print(count(array:testArray))
print(average(array:testArray))

//let addResult = add(array: testArray)
//print(addResult)

//let addResultGeneric = reduce(array: testArray, operation: multiply)
//print(addResultGeneric)

//let multiplyResult = multiply(array: testArray)
//print(multiplyResult)




//Points


