//
//  ExtensionSample.swift
//  Swift5Syntax
//
//  Created by akixie on 2020/4/15.
//  Copyright © 2020 Aki.Xie. All rights reserved.
//

import Foundation

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
