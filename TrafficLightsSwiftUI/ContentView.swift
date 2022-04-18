//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Вячеслав Квашнин on 18.04.2022.
//

import SwiftUI

struct ContentView: View {

    @State var textButton = "START"
    
    var body: some View {
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                CircleView(color: .red)
                CircleView(color: .orange)
                CircleView(color: .green)
                
                Spacer()
                
                Button {
                    textButton = "NEXT"
                } label: {
                    Text(textButton)
                        .frame(width: 150, height: 50)
                        .foregroundColor(.white)
                        .overlay(Rectangle().stroke(.white, lineWidth: 5))
                        .background(.purple)
                        .cornerRadius(15)
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
