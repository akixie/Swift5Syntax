//
//  EquilateralTriangle.swift
//  Swift5Syntax
//
//  Created by akixie on 2020/4/10.
//  Copyright © 2020 Aki.Xie. All rights reserved.
//

import Foundation

/*
 EquilateralTriangle类的构造器执行了三步
 1.设置子类声明的属性值
 2.调用父类的构造器
 3.改变父类定义的属性值。其它的工作比如调用方法、getter和setter
 */


class EquilateralTriangle: NamedShape {
    //除了简单存储属性，还有使用getter和setter的计算属性
    var sideLength:Double = 0.0
    
    init(sideLength:Double,name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSide = 3
    }
    
    //新值的名字是newvalue
    var perimeter:Double{
        get{
            return 3.0 * sideLength
        }
        set{
            sideLength = newValue/3.0
        }
    }
    
    override func simpleDesc() -> String {
        return "an equilateral triangle with sides of length \(sideLength)."
    }
    
    
}
