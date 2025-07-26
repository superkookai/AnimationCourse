//
//  GradientCircleView.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 26/07/2568.
//

import SwiftUI

struct GradientCircleView: View {
    let startPoint: UnitPoint
    let endPoint: UnitPoint
    let dim: CGFloat
    let offsetX: CGFloat
    let offsetY: CGFloat
    let colors: [Color]
    
    var linearGradient: LinearGradient {
        LinearGradient(colors: colors, startPoint: startPoint, endPoint: endPoint)
    }
    
    var body: some View {
        Circle()
            .fill(linearGradient)
            .frame(width: dim, height: dim)
            .offset(x: offsetX, y: offsetY)
        
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        GradientCircleView(
            startPoint: .topLeading,
            endPoint: .bottomTrailing,
            dim: 150,
            offsetX: 0,
            offsetY: 0,
            colors: [.blue,.white,.indigo]
        )
    }
}
