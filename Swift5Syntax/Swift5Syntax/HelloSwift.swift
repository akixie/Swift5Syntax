//
//  HelloSwift.swift
//  Swift5Syntax
//
//  Created by akixie on 2020/4/7.
//  Copyright © 2020 Aki.Xie. All rights reserved.
//

import Foundation

class HelloSwift: NSObject {
    func sayHello()  {
        
        print("Hello, world!")
        
        
        //使用 let 来声明常量，使用 var 来声明变量。
        var myVariable = 42
        myVariable = 50
        let myConstant = 42
        
        let impliciInteger = 70
        let impliciDouble = 70.0
        //初始值没有提供足够的信息或没有初始值，需要在变量后面声明类型，用冒号分割
        let explicitDouble:Double = 70
        let aaaFloat: Float = 4
        
        //值永远不会被隐式转换为其它类型，如果需要请显式转换
        let labelString = "The width is"
        let width = 94
        let widthLabel = labelString + String(width)
        
        //有一种更简单的值转换成字符串方法：把值写到括号中，并在括号之前写一个反斜杠(\)
        let apples = 3
        let oranges = 5
        let appleSummary = "i have \(apples) apples"
        let orangeSummary = "i have \(oranges) oranges"
        
        let app:Float = 4.0
        let appVersion = "app version is \(app) "
        
        //使用三个引号（“”“）来包含多行字符串内容
        let textStr = """
        text is
        i said "i have \(apples) apples."
        and then I said " i have \(apples + oranges) pieces of fruit
        """
        
        let txt = """
        i have \(apples + oranges) fruit
        """
        
        //用[]来创建字典和数组，并使用下标或键来访问元素，最后一个元素后面允许有个逗号
        var shoppingList = ["catfish","water","tulips","blue paint"]
        shoppingList[1] = "bottle of water"
        
        var occupation = ["Malcolm":"Captain","Kaylee":"Mechanic"]
        occupation["Jayne"] = "Public Relations"
        
        shoppingList.append("green")
        print(shoppingList)
        
        //初始化创建空数组或字典
        var emptyArray = [String]()
        var emptyDictionary = [String:Float]()
        
        
//        shoppingList  = []
//        occupation = [:]
        
        shoppingList.append("abc")
        
        //控制流
        //使用if和switch进行条件操作，
        //使用for-in,while和repeat-while进行循环。
        let individualScores = [12,23,34,45,56]
        var teamScore = 0
        for score in individualScores {
            if score > 30 {
                teamScore += 3
            }else{
                teamScore += 1
            }
        }
        print(teamScore)
        
        //可以使用if和let一起来处理值缺失的情况，一个可选值是一个具体的值或是nil表示值缺失
        //在类型后面加个问号（？）来标记这个变量的值是可选的
        var optionalString:String? = "Hello"
        print(optionalString == nil)
        
        var optionalName:String? = "John"
        var greeting = "Hello!"
        if let name = optionalName {
            greeting = "hello,\(name)"
        }
        
        //练习：如果把optionalName改成nil，greeting会是什么？
        //添加一个else，当optionalName是nil时，给greeting赋不同的值
        //如果变量可选值是nil，条件会判断为false,如果不是nil，会将值解包并赋值给let后面的常量。
        var oString:String? = "Hello"
               print(oString == nil)
        var oName:String? = nil
        var greeting1 = "Hello!"
        if let name1 = oName {
            greeting1 = "hello,\(name1)"
        }else{
            greeting1 = "oName is nil"
        }
        
        //通过使用？？操作符号来提供一个默认值，如果可选值缺失的话，可以使用默认值代替
        let nickName:String? = nil
        let fullName:String = "John Apple"
        let infomalGreeting = "Hi \(nickName ?? fullName)"
        
        //switch支持任意类型的数据及各种比较操作
        //注意let在下面例子中，它将匹配等式的值赋给常量x
        let vegetable = "red pepper"
        switch vegetable {
        case "celery":
            print("add some raisins and make ants on a log")
        case "cucumber","pepper":
            print("that would make a good tea sandwith.")
        case let x where x.hasSuffix("pepper"):
            print("Is it a spicy \(x)?")
        default:
            print("everything tastes good in soup")
        }
        
        //可以使用for-in来遍历字典，需要一对变量来表示每个键值对。
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
        ]
        var largest = 0
        var largestKey = ""
        for (kind, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                    largestKey = kind
                }
            }
            if kind.hasSuffix("me") {
                print("Prime")
            }
        }
        print(largest)
        print(largestKey)
        

        
    }
}
