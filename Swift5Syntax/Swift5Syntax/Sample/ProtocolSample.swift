//
//  ProtocolSample.swift
//  Swift5Syntax
//
//  Created by akixie on 2020/4/14.
//  Copyright © 2020 Aki.Xie. All rights reserved.
//

import Foundation

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
