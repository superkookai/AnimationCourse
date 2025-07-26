//
//  RotatingFlowerView.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 26/07/2568.
//

import SwiftUI

struct RotatingFlowerView: View {
    @State private var scale = false
    @State private var rotate = false
    @State private var move = true
    @State private var rotateHue = false
    @State private var dim = 0.0
    
    let colors: [Color]
    let n: Int
    let maxDim: CGFloat
    
    init(colors: [Color] = [.blue,.white], n: Int = 8, maxDim: CGFloat = 100) {
        self.colors = colors
        self.n = n
        self.maxDim = maxDim
    }
    
    var body: some View {
        ZStack {
            ForEach(0..<n, id: \.self) { i in
                let angle = Double(360*i/n)
                CirclePair(
                    dim: dim,
                    colors: colors,
                    angle: angle,
                    move: move
                )
                .rotation3DEffect(.degrees(rotateHue ? -15 : 15), axis: (x: 1, y: 0, z: 0))
            }
            .rotationEffect(.degrees(rotate ? 90 : 0))
            .scaleEffect(scale ? 1 : 0.5)
            .hueRotation(.degrees(rotateHue ? 0 : 720))
        }
        .onAppear {
            withAnimation {
                dim = maxDim
            }
            
            withAnimation(.easeInOut.repeatForever(autoreverses: true).speed(0.05)) {
                move.toggle()
                rotate.toggle()
                scale.toggle()
                rotateHue.toggle()
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        RotatingFlowerView()
    }
}
