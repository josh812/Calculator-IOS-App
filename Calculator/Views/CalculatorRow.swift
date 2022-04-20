//
//  CalculatorRow.swift
//  Calculator
//
//  Created by J M on 4/16/22.
//

import SwiftUI

struct CalculatorRow: View {
    @EnvironmentObject var model:ContentModel
    
    var widthOfScreen:CGFloat
    var colorOfButtons:Color
    var colorOfOperator:Color
    var text1:String
    var text2:String
    var text3:String
    var operatorText:String
    var zeroButton:Bool = false
    
    var body: some View {
        if zeroButton == false {
            HStack (spacing: widthOfScreen/15) {
                Button {
                    model.processButtonPress(symbol: text1)
                } label: {
                    CalculatorButton(color: colorOfButtons, diameter: (widthOfScreen/5), text: text1)
                }
                
                Button {
                    model.processButtonPress(symbol: text2)
                } label: {
                    CalculatorButton(color: colorOfButtons, diameter: (widthOfScreen/5), text: text2)
                }
                
                Button {
                    model.processButtonPress(symbol: text3)
                } label: {
                    CalculatorButton(color: colorOfButtons, diameter: (widthOfScreen/5), text: text3)
                }
                
                Button {
                    model.processButtonPress(symbol: operatorText)
                } label: {
                    CalculatorButton(color: colorOfOperator, diameter: (widthOfScreen/5), text: operatorText)
                }
            }
        } else {
            HStack (spacing: widthOfScreen/15) {
                Button {
                    model.processButtonPress(symbol: text1)
                } label: {
                    CalculatorButton(color: colorOfButtons, diameter: (widthOfScreen/5), text: text1, zeroButton: true)
                }
                
                Button {
                    model.processButtonPress(symbol: text3)
                } label: {
                    CalculatorButton(color: colorOfButtons, diameter: (widthOfScreen/5), text: text3)
                }
                
                
                Button {
                    model.processButtonPress(symbol: operatorText)
                } label: {
                    CalculatorButton(color: colorOfOperator, diameter: (widthOfScreen/5), text: operatorText)
                }
            }
        }
    }
}
