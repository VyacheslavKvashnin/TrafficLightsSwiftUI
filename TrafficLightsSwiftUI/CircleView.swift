//
//  CircleView.swift
//  TrafficLightsSwiftUI
//
//  Created by Вячеслав Квашнин on 18.04.2022.
//

import SwiftUI

struct CircleView: View {
    
    var color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(.white, lineWidth: 3))
            .opacity(0.5)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 0.5)
    }
}
