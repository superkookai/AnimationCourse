//
//  AnimationDemoView.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 26/07/2568.
//

import SwiftUI

struct AnimationDemoView: View {
    let animationModel: AnimatiomModel
    
    @State private var animate = false
    @State private var showLinear = true
    
    var body: some View {
        VStack {
            Text(LocalizedStringKey(animationModel.description))
                .font(.title)
                .multilineTextAlignment(.leading)
                .minimumScaleFactor(0.1)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            Spacer()
            
            if showLinear {
                Circle()
                    .fill(.pink)
                    .frame(width: 50, height: 50)
                    .offset(x: animate ? 150 : -150)
                    .animation(.linear(duration: 1), value: animate)
            }
            
            Circle()
                .fill(.blue)
                .frame(width: 50, height: 50)
                .offset(x: animate ? 150 : -150)
                .animation(animationModel.animation, value: animate)
            
            Spacer()
            
            Toggle(isOn: $showLinear) {
                Text("Show Linear Animation")
            }
            .padding(.horizontal)
            
            Button("Animate") {
                animate.toggle()
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
        .navigationTitle(animationModel.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        AnimationDemoView(animationModel: .init(title: "EaseIn Animation", description: "Start slowly and accelerate toward the end", animation: .easeIn(duration: 1)))
    }
}
