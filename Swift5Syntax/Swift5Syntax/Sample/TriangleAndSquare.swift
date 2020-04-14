//
//  TriangleAndSquare.swift
//  Swift5Syntax
//
//  Created by akixie on 2020/4/13.
//  Copyright © 2020 Aki.Xie. All rights reserved.
//

import Foundation
class TriangleAndSquare {
    var square:Square{
        willSet{
            triangle.sideLength = newValue.sideLength
        }
    }
    var triangle:EquilateralTriangle{
        willSet{
            square.sideLength = newValue.sideLength
        }
    }
    init(size:Double,name:String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
    
}
