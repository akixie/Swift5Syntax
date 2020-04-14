//
//  StructSample.swift
//  Swift5Syntax
//
//  Created by akixie on 2020/4/14.
//  Copyright © 2020 Aki.Xie. All rights reserved.
//

import Foundation

struct Card {
    var rank:Rank
    var suit:Suit
    func simpleDesc() -> String {
        return "desc is \(rank.simpleDescription()) and \(suit.simpleDescription())"
    }

}
