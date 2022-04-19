//
//  Operations.swift
//  Calculator
//
//  Created by J M on 4/16/22.
//

import Foundation

struct Operations {
    static func add(_ a:Float, _ b:Float) -> Float {
        return a + b
    }
    
    static func subtract(_ a:Float, _ b:Float) -> Float {
        return a - b
    }
    
    static func multiply(_ a:Float, _ b:Float) -> Float {
        return a * b
    }
    
    static func divide(_ a:Float, _ b:Float) -> Float? {
        if b != 0 {
            return a / b
        } else {
            return nil
        }
    }
}
