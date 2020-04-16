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
        print(myVariable)
        
        let myConstant = 42
        print(myConstant)
        
        let impliciInteger = 70
        let impliciDouble = 70.0
        print(impliciInteger)
        print(impliciDouble)
        
        //初始值没有提供足够的信息或没有初始值，需要在变量后面声明类型，用冒号分割
        let explicitDouble:Double = 70
        let aaaFloat: Float = 4
        print(explicitDouble)
        print(aaaFloat)
        
        
        //值永远不会被隐式转换为其它类型，如果需要请显式转换
        let labelString = "The width is"
        let width = 94
        let widthLabel = labelString + String(width)
        print(widthLabel)
        
        //有一种更简单的值转换成字符串方法：把值写到括号中，并在括号之前写一个反斜杠(\)
        let apples = 3
        let oranges = 5
        let appleSummary = "i have \(apples) apples"
        let orangeSummary = "i have \(oranges) oranges"
        print(appleSummary)
        print(orangeSummary)
        
        let app:Float = 4.0
        let appVersion = "app version is \(app) "
        print(appVersion)
        
        //使用三个引号（“”“）来包含多行字符串内容
        let textStr = """
        text is
        i said "i have \(apples) apples."
        and then I said " i have \(apples + oranges) pieces of fruit
        """
        print(textStr)
        
        let txt = """
        i have \(apples + oranges) fruit
        """
        print(txt)
        
        //用[]来创建字典和数组，并使用下标或键来访问元素，最后一个元素后面允许有个逗号
        var shoppingList = ["catfish","water","tulips","blue paint"]
        shoppingList[1] = "bottle of water"
        
        var occupation = ["Malcolm":"Captain","Kaylee":"Mechanic"]
        occupation["Jayne"] = "Public Relations"
        
        shoppingList.append("green")
        print(shoppingList)
        
        //初始化创建空数组或字典
        let emptyArray = [String]()
        let emptyDictionary = [String:Float]()
        print(emptyArray)
        print(emptyDictionary)
        
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
        let optionalString:String? = "Hello"
        print(optionalString == nil)
        
        let optionalName:String? = "John"
        var greeting = "Hello!"
        if let name = optionalName {
            greeting = "hello,\(name)"
            print(greeting)
        }
        
        //练习：如果把optionalName改成nil，greeting会是什么？
        //添加一个else，当optionalName是nil时，给greeting赋不同的值
        //如果变量可选值是nil，条件会判断为false,如果不是nil，会将值解包并赋值给let后面的常量。
        let oString:String? = "Hello"
        print(oString == nil)
        
        let oName:String? = nil
        print(oName as Any)
        var greeting1 = "Hello!"
        if let name1 = oName {
            greeting1 = "hello,\(name1)"
        }else{
            greeting1 = "oName is nil"
        }
        print(greeting1)
        
        //通过使用？？操作符号来提供一个默认值，如果可选值缺失的话，可以使用默认值代替
        let nickName:String? = nil
        let fullName:String = "John Apple"
        let infomalGreeting = "Hi \(nickName ?? fullName)"
        print(infomalGreeting)
        
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
        
        //使用while来重复运行一段代码直到条件改变。循环条件也可以在结尾，保证能至少循环一次
        var n=2
        while n<100 {
            n *= 2
        }
        print(n)
        
        var m = 2
        repeat{
            m *= 2
        }while m < 1000
        print(m)
        
        //可以在循环中使用..<来表示下标范围
        var total = 0
        for i in 0..<4 {
            total += i
        }
        print(total)
        
        //函数和闭包
        var resultStr:String = ""
        resultStr = greet(person: "Bob", day: "Tueday")
        print(resultStr)
        
        //_表示不使用参数标签
        resultStr = greet2("Jim", day: "Monday")
        print(resultStr)
        
        
        //让一个函数返回多个值
        let statistics = calculateStatistics(scores: [5,3,100,9])
        print(statistics.sum)
        print(statistics.min)
        
        //函数可以嵌套，被嵌套的函数可以访问外侧函数的变量
        let returnFifteenValue = returnFifteen()
        print(returnFifteenValue)
        
        //函数是第一等类型，可以作为另外一个函数的返回值
        let increment = makeIncrementer()
        print(increment(7))
        
        //函数也可以作为参数传入另一个函数
        let numbers = [20,19,7,12]
        let rst =  hasAnyMatches(list: numbers, condition: lessThanTen)
        print(rst)
        
        //函数实际上是一种特殊的闭包
        let number22 = numbers.map( {
            (number:Int) -> Int in
            let result = 3 * number
            return result
        })
        print(number22)
        
        //如果一个闭包的类型已知，比如作为一个代理的回调，可以忽略参数，返回值，甚至两个都忽略。
        //单个语句闭包会把它语句的值当做结果返回
        let mappedNumber = numbers.map({number in 3 * number})
        print(mappedNumber)
        
        
        let sortedNumbers = numbers.sorted{ $0 > $1}
        print(sortedNumbers)
        
        //对象和类
        let shape = NamedShape(name: "Apple")
        shape.numberOfSide = 7
        let shapeDesc = shape.simpleDesc()
        print(shapeDesc)
        //子类override重写父类方法
        let test = Square(sideLength: 4.4, name: "SQ")
        print(test.area())
        print(test.simpleDesc())
        
        //getter和setter的计算属性
        //类的构造器
        let triangle = EquilateralTriangle(sideLength: 3.3, name: "TR")
        print(triangle.perimeter)
        triangle.perimeter = 9.0
        print(triangle.sideLength)
        
        //使用willSet和didSet设置一个新值之前或者之后运行代码。
        //在下面的类确保三角形的边长总是和正方形的边长相同
        let triangleAndSquare = TriangleAndSquare(size: 10, name: "test shape")
        print(triangleAndSquare.square.sideLength)
        print(triangleAndSquare.triangle.sideLength)
        triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
        print(triangleAndSquare.triangle.sideLength)
        
        //处理变量的可选值时，可以在操作（方法、属性和子脚本）之前加？
        //如果？之前的值是nil，？后面的东西会被忽略，并且整个表达式返回Nil。
        //否则，可选值会被解包，之后的所有代码都会按解包后的值运行
        //这两种情况下，整个表达式的值也是一个可选值。
        let optionalSquare:Square? = Square(sideLength: 2.5, name: "optionalSquare")
        let sideLength = optionalSquare?.sideLength
//        print(sideLength as Any)
        print(sideLength! + 1)
        print(sideLength!)
        
        
        //打包wrap(?),强制解包Force unwrapping(!)
        //WarpAndUnwarp.swift
        
        
        //枚举和结构体
        let ace = Rank.ace
        let aceRawValue = ace.rawValue
        print(aceRawValue)
        
        let hearts = Suit.hearts
        let heartDesc = hearts.simpleDescription()
        let heartColor = hearts.suitColor()
        print(heartDesc)
        print(heartColor)
        
        //注意 ServerResponse 的值在与 switch 的分支匹配时，
        //日升和日落时间是如何从该值中提取出来的。
        let success = ServerRespose.result("6:00am", "8:00pm")
        print(success)
        let failure = ServerRespose.failure("service error")
        print(failure)
        switch success {
        case let .result(sunrise, sunset):
            print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
        case let .failure(message):
            print("Failure...  \(message)")
        }
        
        //结构体
        let threeOfSpades = Card(rank: .three, suit: .hearts)
        print(threeOfSpades)
        
        //protocol
        let a = SimpleClass()
        a.adjust()
        let aDescription = a.simpleDescription
        print(aDescription)
        
        var b = SimpleStructure()
        b.adjust()
        let bDescription = b.simpleDescription
        print(bDescription)
        
        //使用 extension 来为现有的类型添加功能，比如新的方法和计算属性
        print(7.simpleDescription)
        
        //可以像使用其他命名类型一样使用协议名
        //例如，创建一个有不同类型但是都实现一个协议的对象集合。
        //当你处理类型是协议的值时，协议外定义的方法不可用。
        let protocolValue: ExampleProtocol = a
        print(protocolValue.simpleDescription)
        // print(protocolValue.anotherProperty)  // 去掉注释可以看到错误
    }
        
    
    //函数也可以作为参数传入另一个函数
    func hasAnyMatches(list:[Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        return false
    }
    func lessThanTen(number:Int) -> Bool {
        return number < 10
    }
    
    //函数和闭包
    func greet(person:String,day:String) -> String {
        return "Hello \(person),today is \(day)"
    }
    //在参数名称前，可以自定义参数标签，或使用_表示不使用参数标签
    func greet2(_ person:String,day:String) -> String {
        return "Hello \(person),today is \(day)"
    }
    
    //使用元组来生成复合值，比如让一个函数返回多个值。该元组的元素可以用名称或数字来获取
    func calculateStatistics(scores:[Int]) -> (min:Int,max:Int,sum:Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        for score in scores {
            if score > max {
                max = score
            }else if(score < min){
                min = score
            }
            sum += score
        }
        return (min,max,sum)
    }
    
    //函数可以嵌套
    func returnFifteen() -> Int {
        var y = 10
        func add(){
            y += 5
        }
        add()
        return y
    }
    
    //函数是第一等类型，可以作为另外一个函数的返回值
    func makeIncrementer() -> ((Int) -> Int){
        func addOne(number:Int) -> Int{
            return 1 + number
        }
        return addOne
    }
    
}
