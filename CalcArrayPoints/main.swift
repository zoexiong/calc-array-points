//
//  main.swift
//  CalcArrayPoints
//
//  Created by Just on 16/10/9.
//  Copyright © 2016年 Just. All rights reserved.
//

import Foundation

func add(left:Float, right:Float) -> Float{
    let result = left + right
    return result
}

func subtract(left:Float, right:Float) -> Float{
    let result = left - right
    return result
}

func multiply(left:Float, right:Float) -> Float{
    let result = left * right
    return result
}

func divide(left:Float, right:Float) -> Float? {
    if right != 0 {
  let result = left / right
        return result
    } else {
       print("Invalid Input, right can not be 0")
        return nil
    }
}

func mathOperation(left: Float, right: Float, operation: (Float, Float) -> Float?) -> Float? {
    return operation(left, right)
}
// why the labels "left:" and "right:" are not needed here?




