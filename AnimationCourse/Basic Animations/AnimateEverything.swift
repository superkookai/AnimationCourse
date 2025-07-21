//
//  AnimateEverything.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 21/07/2568.
//

import SwiftUI

struct AnimateEverything: View {
    @State private var isAnimating: Bool = false
    
    var text: String {
        isAnimating ? "Reset Animation" : "Start Animation"
    }
    
    var squareColors: [Color] {
        isAnimating ? [.blue, .green, .yellow] : [.black, .purple.opacity(0.3), .cyan]
    }
    
    var gradient: LinearGradient {
        LinearGradient(colors: squareColors, startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    
    var angleRotation: Angle {
        .degrees(isAnimating ? 360 : 0)
    }
    
    var width: CGFloat? {
        isAnimating ? nil : 150
    }
    
    var startPoint: UnitPoint {
        isAnimating ? .top : .leading
    }
    
    var endPoint: UnitPoint {
        isAnimating ? .bottom : .trailing
    }
    
    var circleGradient: LinearGradient {
        LinearGradient(colors: [.red,.blue,.purple,.orange, .yellow], startPoint: startPoint, endPoint: endPoint)
    }
    
    var buttonGradient: LinearGradient {
        LinearGradient(colors: [.pink,.blue], startPoint: .leading, endPoint: .trailing)
    }
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(gradient)
                .frame(width: width, height: 150)
                .mask {
                    Text("Hello, World!")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                }
            
            RoundedRectangle(cornerRadius: 25)
                .fill(gradient)
                .hueRotation(angleRotation)
                .frame(width: width, height: 150)
                .rotation3DEffect(angleRotation, axis: (x: 1, y: 0, z: 0))
            
            Circle()
                .fill(circleGradient)
                .hueRotation(angleRotation)
                .animation(.easeInOut(duration: 5).repeatForever(autoreverses: true), value: isAnimating)
            
            Button {
                withAnimation(.easeInOut(duration: 1)) {
                    isAnimating.toggle()
                }
            } label: {
                Text(text)
                    .font(.largeTitle)
                    .fontDesign(.rounded)
                    .bold()
                    .foregroundStyle(buttonGradient)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white.opacity(0.9))
                            .shadow(radius: 5)
                    )
            }

        }
        .padding()
    }
}

#Preview {
    AnimateEverything()
}
