//
//  ContentView.swift
//  Calculator
//
//  Created by J M on 4/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            GeometryReader { geo in
                VStack {
                    HStack (spacing: geo.size.width/15){
                        CalculatorButton(color: Color.gray, diameter: (geo.size.width/5), text: "AC")
                        CalculatorButton(color: Color.gray, diameter: (geo.size.width/5), text: "+/-")
                        CalculatorButton(color: Color.gray, diameter: (geo.size.width/5), text: "%")
                        CalculatorButton(color: Color.orange, diameter: (geo.size.width/5), text: "÷")
                    }
                    
                    HStack (spacing: geo.size.width/15){
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: "7")
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: "8")
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: "9")
                        CalculatorButton(color: Color.orange, diameter: (geo.size.width/5), text: "×")
                    }

                    HStack (spacing: geo.size.width/15){
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: "4")
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: "5")
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: "6")
                        CalculatorButton(color: Color.orange, diameter: (geo.size.width/5), text: "-")
                    }

                    HStack (spacing: geo.size.width/15){
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: "1")
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: "2")
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: "3")
                        CalculatorButton(color: Color.orange, diameter: (geo.size.width/5), text: "+")
                    }
                    
                    HStack (spacing: geo.size.width/15){
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: "0")
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: "")
                        CalculatorButton(color: Color(red: 30/255, green: 30/255, blue: 30/255), diameter: (geo.size.width/5), text: ".")
                        CalculatorButton(color: Color.orange, diameter: (geo.size.width/5), text: "=")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
