//
//  EnumSample.swift
//  Swift5Syntax
//
//  Created by akixie on 2020/4/14.
//  Copyright © 2020 Aki.Xie. All rights reserved.
//

import Foundation

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func suitColor() -> NSString {
        switch self {
        case .spades, .diamonds:
            return "Red"
        case .hearts:
            return "Yellow"
        default:
            return "color"
        }
        
    }
}

enum ServerRespose{
    case result(String,String)
    case failure(String)
    
}




