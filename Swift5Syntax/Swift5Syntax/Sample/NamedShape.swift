//
//  SwiftClass.swift
//  Swift5Syntax
//
//  Created by akixie on 2020/4/10.
//  Copyright © 2020 Aki.Xie. All rights reserved.
//

import Foundation

class NamedShape {
    var numberOfSide:Int = 0
    var name:String
    
    //self被用来区别实例变量name和构造器的参数name
    init(name:String) {
        self.name = name
    }
    
    
    func simpleDesc() -> String {
        return "\(name) a shape with \(numberOfSide) sides"
    }
    
}
