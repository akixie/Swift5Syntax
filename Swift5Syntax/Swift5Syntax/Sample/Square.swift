//
//  Square.swift
//  Swift5Syntax
//
//  Created by akixie on 2020/4/10.
//  Copyright © 2020 Aki.Xie. All rights reserved.
//

import Foundation

class Square: NamedShape {
    var sideLength:Double
    
    init(sideLength:Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSide = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDesc() -> String {
        return "a square with sides of length \(sideLength)."
    }
    
    
}
