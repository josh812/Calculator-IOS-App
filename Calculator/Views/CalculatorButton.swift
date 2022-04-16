//
//  CalculatorButton.swift
//  Calculator
//
//  Created by J M on 4/14/22.
//

import SwiftUI

struct CalculatorButton: View {
    var color:Color
    var diameter:CGFloat
    var text:String
    
    var body: some View {
        ZStack {
            Ellipse()
                .foregroundColor(color)
                .frame(width: diameter, height: diameter)
            
            Text(text)
                .font(.title)
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(color: Color.gray, diameter: 100, text: "7")
    }
}
