//
//  CirclePair.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 26/07/2568.
//

import SwiftUI

struct CirclePair: View {
    let startPoint: UnitPoint
    let endPoint: UnitPoint
    let dim: CGFloat
    let offsetX: CGFloat
    let offsetY: CGFloat
    let colors: [Color]
    let angle: CGFloat
    let move: Bool
    let opacity: CGFloat
    
    init(
        startPoint: UnitPoint = .top,
        endPoint: UnitPoint = .bottom,
        dim: CGFloat = 120,
        offsetX: CGFloat = 0,
        offsetY: CGFloat = 0,
        colors: [Color] = [.green,.white],
        angle: CGFloat = 0,
        move: Bool = true,
        opacity: CGFloat = 0.5
    ) {
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.dim = dim
        self.offsetX = offsetX
        self.offsetY = offsetY
        self.colors = colors
        self.angle = angle
        self.move = move
        self.opacity = opacity
    }
    
    var body: some View {
        ZStack {
            GradientCircleView(startPoint: startPoint, endPoint: endPoint, dim: dim, offsetX: offsetX, offsetY: move ? -dim/2 : dim/2, colors: colors)
            
            GradientCircleView(startPoint: endPoint, endPoint: startPoint, dim: dim, offsetX: offsetX, offsetY: move ? dim/2 : -dim/2, colors: colors)
        }
        .opacity(opacity)
        .rotationEffect(.degrees(angle))
    }
}

#Preview {
    CirclePair()
}
