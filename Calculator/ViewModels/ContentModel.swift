//
//  ContentModel.swift
//  Calculator
//
//  Created by J M on 4/15/22.
//

import Foundation

class ContentModel: ObservableObject {
    // This will update when the user presses the "=" button
    @Published var calculatorResult = "0"
    
    func processButtonPress(symbol:String) {
        if symbol == "+" || symbol == "−" || symbol == "x" || symbol == "/" || symbol == "=" {
            if symbol == "+" {
                //MARK: +
                if calculatorResult.contains("+") ||
                    calculatorResult.contains("−") ||
                    calculatorResult.contains("x") ||
                    calculatorResult.contains("/") {
                    let valuesList = calculatorResult.split(separator: " ")
                    
                    if valuesList.indices.contains(2) {
                        calculatorResult = String(self.calculateResult(Float(valuesList[0]) ?? 0, Float(valuesList[2]) ?? 0, String(valuesList[1])))
                        
                        calculatorResult += " + "
                    } else {
                        return
                    }
                } else {
                    calculatorResult += " + "
                }
            } else if symbol == "−" {
                //MARK: -
                if calculatorResult.contains("+") ||
                    calculatorResult.contains("−") ||
                    calculatorResult.contains("x") ||
                    calculatorResult.contains("/") {
                    let valuesList = calculatorResult.split(separator: " ")
                    
                    if valuesList.indices.contains(2) {
                        calculatorResult = String(self.calculateResult(Float(valuesList[0]) ?? 0, Float(valuesList[2]) ?? 0, String(valuesList[1])))
                        
                        calculatorResult += " − "
                    } else {
                        return
                    }
                } else {
                    calculatorResult += " − "
                }
            } else if symbol == "x" {
                //MARK: x
                if calculatorResult.contains("+") ||
                    calculatorResult.contains("−") ||
                    calculatorResult.contains("x") ||
                    calculatorResult.contains("/") {
                    let valuesList = calculatorResult.split(separator: " ")
                    
                    if valuesList.indices.contains(2) {
                        calculatorResult = String(self.calculateResult(Float(valuesList[0]) ?? 0, Float(valuesList[2]) ?? 0, String(valuesList[1])))
                        
                        calculatorResult += " x "
                    } else {
                        return
                    }
                } else {
                    calculatorResult += " x "
                }
            } else if symbol == "/" {
                //MARK: /
                if calculatorResult.contains("+") ||
                    calculatorResult.contains("−") ||
                    calculatorResult.contains("x") ||
                    calculatorResult.contains("/") {
                    let valuesList = calculatorResult.split(separator: " ")
                    
                    if valuesList.indices.contains(2) {
                        calculatorResult = String(self.calculateResult(Float(valuesList[0]) ?? 0, Float(valuesList[2]) ?? 0, String(valuesList[1])))
                        
                        calculatorResult += " / "
                    } else {
                        return
                    }
                } else {
                    calculatorResult += " / "
                }
            } else if symbol == "=" {
                //MARK: =
                if calculatorResult.contains("+") ||
                    calculatorResult.contains("−") ||
                    calculatorResult.contains("x") ||
                    calculatorResult.contains("/") {
                    let valuesList = calculatorResult.split(separator: " ")
                    
                    if valuesList.indices.contains(2) {
                        calculatorResult = String(self.calculateResult(Float(valuesList[0]) ?? 0, Float(valuesList[2]) ?? 0, String(valuesList[1])))
                    }
                } else {
                    return
                }
            }
        } else if symbol == "AC" || symbol == "%" || symbol == "+/-" {
            if symbol == "AC" {
                //MARK: AC
                calculatorResult = "0"
            } else if symbol == "%" {
                //MARK: %
                if calculatorResult.contains("+") ||
                    calculatorResult.contains("−") ||
                    calculatorResult.contains("x") ||
                    calculatorResult.contains("/") {
                    let valuesList = calculatorResult.split(separator: " ")
                    
                    if valuesList.indices.contains(2) {
                        let newValue:Float = ((Float(valuesList[2]) ?? 0) / 100)
                        
                        calculatorResult = String(valuesList[0]) + " " + String(valuesList[1]) + " " + String(newValue)
                    } else {
                        return
                    }
                } else {
                    calculatorResult = String((Float(calculatorResult) ?? 0) / 100)
                }
            } else if symbol == "+/-" {
                //MARK: +/-
                if calculatorResult.contains("+") ||
                    calculatorResult.contains("−") ||
                    calculatorResult.contains("x") ||
                    calculatorResult.contains("/") {
                    
                    let valuesList = calculatorResult.split(separator: " ")
                    
                    if valuesList.indices.contains(2) {
                        let newValue:Float = ((Float(valuesList[2]) ?? 0) * -1)
                        
                        calculatorResult = String(valuesList[0]) + " " + String(valuesList[1]) + " " + String(newValue)
                    } else {
                        return
                    }
                } else {
                    calculatorResult = String((Float(calculatorResult) ?? 0) * -1)
                }
            }
        } else {
            //MARK: Numbers
            if calculatorResult == "0" && symbol != "." {
                calculatorResult = symbol
            } else if calculatorResult == "0" && symbol == "." {
                calculatorResult += symbol
            } else if symbol == "." {
                if calculatorResult.contains("+") ||
                    calculatorResult.contains("−") ||
                    calculatorResult.contains("x") ||
                    calculatorResult.contains("/") {
                    let valuesList = calculatorResult.split(separator: " ")
                    if valuesList.indices.contains(2) {
                        if valuesList[2].contains(".") {
                            return
                        } else {
                            calculatorResult += symbol
                        }
                    }
                } else {
                    let valuesList = calculatorResult.split(separator: " ")
                    
                    if valuesList.indices.contains(1) {
                        return
                    } else {
                        if valuesList[0].contains(".") {
                            return
                        } else {
                            calculatorResult += symbol
                        }
                    }
                }
            } else {
                calculatorResult += symbol
            }
        }
    }
    
    func calculateResult(_ a:Float, _ b:Float, _ calcOperator:String) -> Float {
        if calcOperator == "+" {
            return Operations.add(a, b)
        } else if calcOperator == "−" {
            return Operations.subtract(a, b)
        } else if calcOperator == "x" {
            return Operations.multiply(a, b)
        } else if calcOperator == "/" {
            if let result = Operations.divide(a, b) {
                return result
            } else {
                return 0
            }
        } else {
            return 0
        }
    }
}
