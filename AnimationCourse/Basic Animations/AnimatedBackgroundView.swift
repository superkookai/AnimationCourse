//
//  AnimatedBackgroundView.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 26/07/2568.
//

import SwiftUI

struct AnimatedBackgroundView: View {
    @State private var toggleBackground = false
    let linearGradient = LinearGradient(colors: [.blue,.black,.purple], startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        ZStack {
            if toggleBackground {
                Color.black.ignoresSafeArea()
            } else {
                linearGradient
                    .ignoresSafeArea()
                    .opacity(0.8)
                    .blur(radius: 50)
            }
            
            ConcentricCircleEffectView()
                .frame(width: 150, height: 150)
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 1)) {
                toggleBackground.toggle()
            }
        }
    }
}

#Preview {
    AnimatedBackgroundView()
}
