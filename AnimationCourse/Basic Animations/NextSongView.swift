//
//  NextSongView.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 26/07/2568.
//

import SwiftUI

struct NextSongView: View {
    @State private var tapped: Bool = false
    
    var value: Double {
        tapped ? 1 : 0
    }

    let dim: CGFloat
    let color: Color
    let delay = 0.3
    
    init(dim: CGFloat = 50, color: Color = .black) {
        self.dim = dim
        self.color = color
    }
    
    var playImage: some View {
        Image(systemName: "play.fill")
            .resizable()
            .frame(width: dim, height: dim)
            .foregroundStyle(color)
    }
    
    var body: some View {
        HStack(spacing: 0) {
            playImage
                .opacity(value)
                .scaleEffect(value)
            playImage
            playImage
                .opacity(1-value)
                .scaleEffect(1-value)
        }
        .offset(x: value * dim)
        .offset(x: -dim/2)
        .onTapGesture {
            withAnimation(.spring) {
                if !tapped {
                    tapped = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                    tapped = false
                }
            }
        }
    }
}

#Preview {
    NextSongView()
}


