//
//  ContentView.swift
//  Calculator
//
//  Created by J M on 4/14/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        ZStack {
            //MARK: Background
            Color.black
                .ignoresSafeArea()
            
            GeometryReader { geo in
                VStack (alignment: .trailing) {
                    Spacer()
                    
                    //MARK: Result Number
                    Text(String(model.calculatorResult))
                        .foregroundColor(.white)
                        .bold()
                        .font(.custom("xxlTitle", size: 80))
                        .padding(.trailing, 30)
                    
                    //MARK: Calc Buttons
                    Group {
                        CalculatorRow(widthOfScreen: geo.size.width, colorOfButtons: Color.gray, colorOfOperator: Color.orange, text1: "AC", text2: "+/-", text3: "%", operatorText: "/")
                        
                        CalculatorRow(widthOfScreen: geo.size.width, colorOfButtons: Color(red: 30/255, green: 30/255, blue: 30/255), colorOfOperator: Color.orange, text1: "7", text2: "8", text3: "9", operatorText: "x")
                        
                        CalculatorRow(widthOfScreen: geo.size.width, colorOfButtons: Color(red: 30/255, green: 30/255, blue: 30/255), colorOfOperator: Color.orange, text1: "4", text2: "5", text3: "6", operatorText: "−")
                        
                        CalculatorRow(widthOfScreen: geo.size.width, colorOfButtons: Color(red: 30/255, green: 30/255, blue: 30/255), colorOfOperator: Color.orange, text1: "1", text2: "2", text3: "3", operatorText: "+")
                        
                        CalculatorRow(widthOfScreen: geo.size.width, colorOfButtons: Color(red: 30/255, green: 30/255, blue: 30/255), colorOfOperator: Color.orange, text1: "0", text2: "", text3: ".", operatorText: "=", zeroButton: true)
                    }
                }
                .padding(.bottom, 20)
            }
            .padding(.horizontal, 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 mini")
            .environmentObject(ContentModel())
    }
}
