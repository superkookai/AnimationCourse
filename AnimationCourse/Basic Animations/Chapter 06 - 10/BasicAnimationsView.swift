//
//  BasicAnimationsView.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 26/07/2568.
//

import SwiftUI

//Animate these animations to the Size, Position, or Transparency of the Objects

extension Animation {
    static func smoothEase(duration: TimeInterval) -> Animation {
        .timingCurve(0.25, 0.1, 0.25, 0.1, duration: duration)
    }
    
    static func pleasant(duration: TimeInterval) -> Animation {
        .timingCurve(0.57, 0.17, 0.5, 1.1, duration: duration)
    }
}

struct BasicAnimationsView: View {
    let animations: [AnimatiomModel] = [
        .init(
            title: "Linear Animation",
            description: "Move at constant speed with no acceleration or deacceleration",
            animation: .linear(
                duration: 1
            )
        ),
        .init(
            title: "EaseIn Animation",
            description: "Start slowly and accelerate toward the end",
            animation: .easeIn(
                duration: 1
            )
        ),
        .init(
            title: "EaseOut Animation",
            description: "Start quicky and slow down toward the end",
            animation: .easeOut(
                duration: 1
            )
        ),
        .init(
            title: "EaseInEaseOut",
            description: "Start and end slow but accelerate at the middle",
            animation: .easeInOut(
                duration: 1
            )
        ),
        .init(
            title: "Snappy Animation",
            description: "Quick and responsive with minor overshooting.",
            animation: .snappy(duration: 1)
        ),
        .init(
            title: "Bouncy Animation",
            description: "A spring animation with a predefined duration and higher amount of bounce that can be tuned.",
            animation: .bouncy(duration: 1)
        ),
        .init(
            title: "Timing Curve Animation",
            description: """
            A customizable timing curve animation that adjusts the rate of change over time using Bézier control points.
            - The curve allows for smooth, non-linear animations with flexible easing behavior.
            
            - **Parameters**:
                - **Control Points (x1, y1, x2, y2)**: Defines the timing curve with two control points for the Bézier curve.
                - **x1, y1**: The first control point that determines the initial acceleration of the animation.
                - **x2, y2**: The second control point that affects the deceleration and final smoothness.
            - **Duration**: Controls how long the animation lasts.
            - **Behavior**: Provides smooth transitions with natural easing effects, starting slow, accelerating, and then decelerating.
            """,
            animation: .smoothEase(duration: 1)
        ),
        .init(
            title: "Spring Animations",
            description: """
                - **Mimics the behavior of a physical spring with natural bounce.**

                - **response**: Controls the duration of the spring's movement. Higher values result in a slower animation.

                - **dampingFraction**: Dictates how quickly the spring comes to rest. A value of `1.0` ensures no oscillation, while lower values create more bounce.

                - **blendDuration**: Affects how smoothly the animation transitions to the spring effect.
                """,
            animation: .spring(
                response: 1,
                dampingFraction: 0.8,
                blendDuration: 100
            )
        ),
        .init(
            title: "Interpolating Spring Animation",
            description: """
            An interpolating spring animation that uses a damped spring model to produce values in the range [0, 1] that are then used to interpolate within the [from, to] range of the animated property. Preserves velocity across overlapping animations by adding the effects of each animation.
            
            - **mass**
            The mass of the object attached to the spring.

            - **stiffness**
            The stiffness of the spring.

            - **damping**
            The spring damping value.

            - **initialVelocity**
            The initial velocity of the spring, as a value in the range [0, 1] representing the magnitude of the value being animated.
            """,
            animation: .interpolatingSpring(stiffness: 50, damping: 5)
        )
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(animations) { animation in
                    NavigationLink(animation.title) {
                        AnimationDemoView(animationModel: animation)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("SwiftUI Animation")
        }
    }
}

#Preview {
    BasicAnimationsView()
}
