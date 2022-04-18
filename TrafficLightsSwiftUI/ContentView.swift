//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Вячеслав Квашнин on 18.04.2022.
//

import SwiftUI

enum DifferentColors {
    case red
    case orange
    case green
}

struct ContentView: View {
    
    @State private var textButton = "START"
    
    @State private var redOpacity = 0.5
    @State private var orangeOpacity = 0.5
    @State private var greenOpacity = 0.5
    
    @State var differentColor = DifferentColors.red
    
    private func choseColor() {
        switch differentColor {
        case .red:
            redOpacity = 1
            differentColor = .orange
            greenOpacity = 0.5
        case .orange:
            redOpacity = 0.5
            orangeOpacity = 1
            differentColor = .green
        case .green:
            orangeOpacity = 0.5
            greenOpacity = 1
            differentColor = .red
        }
    }
    
    var body: some View {
        
        ZStack {
            Color
                .black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                CircleView(color: .red, opacity: redOpacity)
                CircleView(color: .orange, opacity: orangeOpacity)
                CircleView(color: .green, opacity: greenOpacity)
                
                Spacer()
                
                Button {
                    choseColor()
                    textButton = "NEXT"
                } label: {
                    Text(textButton)
                        .bold()
                        .frame(width: 150, height: 50)
                        .overlay(Capsule().stroke(.white, lineWidth: 5))
                        .buttonBorderShape(.capsule)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
