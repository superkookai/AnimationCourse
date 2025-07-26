//
//  ConcentricCircleEffectView.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 26/07/2568.
//

import SwiftUI

typealias xyz = (x: CGFloat, y: CGFloat, z: CGFloat)

struct ConcentricCircleEffectView: View {
    @State private var animate = false
    
    let n: Int
    let duration: TimeInterval
    
    init(n: Int = 8, duration: TimeInterval = 5) {
        self.n = n
        self.duration = duration
    }
    
    let xAxis: xyz = (x: 1, y: 0, z: 0)
    let yAxis: xyz = (x: 0, y: 1, z: 0)
    let zAxis: xyz = (x: 0, y: 0, z: 1)
    
    let xyAxis: xyz = (x: 1, y: 1, z: 0)
    let yzAxis: xyz = (x: 0, y: 1, z: 1)
    let zxAxis: xyz = (x: 1, y: 0, z: 1)
    
    var angle: Angle {
        .degrees(animate ? 0 : 360)
    }
    
    var scale: CGFloat {
        animate ? 1.5 : 0.75
    }
    
    var opacity: CGFloat {
        animate ? 0 : 1
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(colors: [.blue,.purple,.pink,.blue], center: .center)
    }
    
    var lineWidth: CGFloat {
        4
    }
    
    func axis(i: Int) -> xyz {
        switch (i % 3) {
        case 0: xyAxis
        case 1: yzAxis
        case 2: zxAxis
        default: zxAxis
        }
    }
    
    var body: some View {
        ZStack {
            ForEach(0..<n, id: \.self) { index in
                Circle()
                    .stroke(angularGradient, lineWidth: lineWidth)
                    .scaleEffect(scale)
                    .opacity(opacity)
                    .rotation3DEffect(angle, axis: axis(i: index))
                    .shadow(color: .blue.opacity(0.8), radius: 10)
                    .hueRotation(angle)
                    .animation(
                        .easeInOut(duration: duration)
                        .repeatForever()
                        .delay(Double(index)*0.4),
                        value: animate
                    )
            }
        }
        .onAppear {
            animate.toggle()
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        ConcentricCircleEffectView()
            .frame(width: 150, height: 150)
    }
}
