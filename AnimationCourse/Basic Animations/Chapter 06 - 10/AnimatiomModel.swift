//
//  AnimatiomModel.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 26/07/2568.
//

import Foundation
import SwiftUI

struct AnimatiomModel: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let animation: Animation
}
