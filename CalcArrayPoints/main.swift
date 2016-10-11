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

let addGenericResult = mathOperation(left: 4, right: 5, operation: add)
print(addGenericResult)

//Array






