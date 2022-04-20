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
    var zeroButton:Bool = false
    
    var body: some View {
        if zeroButton == false {
            ZStack {
                Ellipse()
                    .foregroundColor(color)
                    .frame(width: diameter, height: diameter)
                
                Text(text)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
            }
        } else {
            ZStack (alignment: .leading) {
                Rectangle()
                    .foregroundColor(color)
                    .frame(height: diameter)
                    .cornerRadius(100)
                
                Text(text)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.leading, 30)
            }
        }
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(color: Color.gray, diameter: 100, text: "7")
    }
}
