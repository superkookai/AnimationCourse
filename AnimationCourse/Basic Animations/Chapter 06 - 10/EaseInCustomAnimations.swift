//
//  EaseInCustomAnimations.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 26/07/2568.
//

import Foundation
import SwiftUI


//Animate these animations to the Size, Position, or Transparency of the Objects

extension Animation {
    static var easeInSine: Animation {
        .timingCurve(0.12, 0, 0.39, 0, duration: 1)
    }
    static func easeInSine(duration: TimeInterval) -> Animation {
        .timingCurve(0.12, 0, 0.39, 0, duration: duration)
    }
    static var easeOutSine: Animation {
        .timingCurve(0.61, 1, 0.88, 1, duration: 1)
    }
    static func easeOutSine(duration: TimeInterval) -> Animation {
        .timingCurve(0.61, 1, 0.88, 1, duration: duration)
    }
    
    static var easeInOutSine: Animation {
        .timingCurve(0.37, 0, 0.63, 1, duration: 1)
    }
    static func easeInOutSine(duration: TimeInterval) -> Animation {
        .timingCurve(0.37, 0, 0.63, 1, duration: duration)
    }
    static var easeInQuad: Animation {
        .timingCurve(0.11, 0, 0.5, 0, duration: 1)
    }
    static func easeInQuad(duration: TimeInterval) -> Animation {
        .timingCurve(0.11, 0, 0.5, 0, duration: duration)
    }
    static var easeOutQuad: Animation {
        .timingCurve(0.5, 1, 0.89, 1, duration: 1)
    }
    static func easeOutQuad(duration: TimeInterval) -> Animation {
        .timingCurve(0.5, 1, 0.89, 1, duration: duration)
    }
    static var easeInOutQuad: Animation {
        .timingCurve(0.45, 0, 0.55, 1, duration: 1)
    }
    static func easeInOutQuad(duration: TimeInterval) -> Animation {
        .timingCurve(0.45, 0, 0.55, 1, duration: duration)
    }
    static var easeInCubic: Animation {
        .timingCurve(0.32, 0, 0.67, 0, duration: 1)
    }
    static func easeInCubic(duration: TimeInterval) -> Animation {
        .timingCurve(0.32, 0, 0.67, 0, duration: duration)
    }
    static var easeOutCubic: Animation {
        .timingCurve(0.33, 1, 0.68, 1, duration: 1)
    }
    static func easeOutCubic(duration: TimeInterval) -> Animation {
        .timingCurve(0.33, 1, 0.68, 1, duration: duration)
    }
    static var easeInOutCubic: Animation {
        .timingCurve(0.65, 0, 0.35, 1, duration: 1)
    }
    static func easeInOutCubic(duration: TimeInterval) -> Animation {
        .timingCurve(0.65, 0, 0.35, 1, duration: duration)
    }
    static var easeInQuart: Animation {
        .timingCurve(0.5, 0, 0.75, 0, duration: 1)
    }
    static func easeInQuart(duration: TimeInterval) -> Animation {
        .timingCurve(0.5, 0, 0.75, 0, duration: duration)
    }
    static var easeOutQuart: Animation {
        .timingCurve(0.25, 1, 0.5, 1, duration: 1)
    }
    static func easeOutQuart(duration: TimeInterval) -> Animation {
        .timingCurve(0.25, 1, 0.5, 1, duration: duration)
    }
    static var easeInOutQuart: Animation {
        .timingCurve(0.76, 0, 0.24, 1, duration: 1)
    }
    static func easeInOutQuart(duration: TimeInterval) -> Animation {
        .timingCurve(0.76, 0, 0.24, 1, duration: duration)
    }
    static var easeInQuint: Animation {
        .timingCurve(0.64, 0, 0.78, 0, duration: 1)
    }
    static func easeInQuint(duration: TimeInterval) -> Animation {
        .timingCurve(0.64, 0, 0.78, 0, duration: duration)
    }
    static var easeOutQuint: Animation {
        .timingCurve(0.22, 1, 0.36, 1, duration: 1)
    }
    static func easeOutQuint(duration: TimeInterval) -> Animation {
        .timingCurve(0.22, 1, 0.36, 1, duration: duration)
    }
    static var easeInOutQuint: Animation {
        .timingCurve(0.83, 0, 0.17, 1, duration: 1)
    }
    static func easeInOutQuint(duration: TimeInterval) -> Animation {
        .timingCurve(0.83, 0, 0.17, 1, duration: duration)
    }
    static var easeInExpo: Animation {
        .timingCurve(0.7, 0, 0.84, 0, duration: 1)
    }
    static func easeInExpo(duration: TimeInterval) -> Animation {
        .timingCurve(0.7, 0, 0.84, 0, duration: duration)
    }
    static var easeOutExpo: Animation {
        .timingCurve(0.16, 1, 0.3, 1, duration: 1)
    }
    static func easeOutExpo(duration: TimeInterval) -> Animation {
        .timingCurve(0.16, 1, 0.3, 1, duration: duration)
    }
    static var easeInOutExpo: Animation {
        .timingCurve(0.87, 0, 0.13, 1, duration: 1)
    }
    static func easeInOutExpo(duration: TimeInterval) -> Animation {
        .timingCurve(0.87, 0, 0.13, 1, duration: duration)
    }
    static var easeInCirc: Animation {
        .timingCurve(0.55, 0, 1, 0.45, duration: 1)
    }
    static func easeInCirc(duration: TimeInterval) -> Animation {
        .timingCurve(0.55, 0, 1, 0.45, duration: duration)
    }
    static var easeOutCirc: Animation {
        .timingCurve(0, 0.55, 0.45, 1, duration: 1)
    }
    static func easeOutCirc(duration: TimeInterval) -> Animation {
        .timingCurve(0, 0.55, 0.45, 1, duration: duration)
    }
    static var easeInOutCirc: Animation {
        .timingCurve(0.85, 0, 0.15, 1, duration: 1)
    }
    static func easeInOutCirc(duration: TimeInterval) -> Animation {
        .timingCurve(0.85, 0, 0.15, 1, duration: duration)
    }
    static var easeInBack: Animation {
        .timingCurve(0.36, 0, 0.66, -0.56, duration: 1)
    }
    static func easeInBack(duration: TimeInterval) -> Animation {
        .timingCurve(0.36, 0, 0.66, -0.56, duration: duration)
    }
    static var easeOutBack: Animation {
        .timingCurve(0.34, 1.56, 0.64, 1, duration: 1)
    }
    static func easeOutBack(duration: TimeInterval) -> Animation {
        .timingCurve(0.34, 1.56, 0.64, 1, duration: duration)
    }
    static var easeInOutBack: Animation {
        .timingCurve(0.68, -0.6, 0.32, 1.6, duration: 1)
    }
    static func easeInOutBack(duration: TimeInterval) -> Animation {
        .timingCurve(0.68, -0.6, 0.32, 1.6, duration: duration)
    }
}
