//
//  BasicAnimationExample.swift
//  AnimationCourse
//
//  Created by Weerawut Chaiyasomboon on 21/07/2568.
//

import SwiftUI

struct BasicAnimationExample: View {
    @State private var isVisible: Bool = true
    @State private var color: Color = .red
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Rectangle()
                .fill(color.gradient)
                .opacity(isVisible ? 1 : 0)
                .frame(width: 300, height: 300)
                .cornerRadius(10)
                .animation(.easeInOut(duration: 1), value: color)
            
            HStack {
                Button {
                    withAnimation(.smooth(duration: 1)) {
                        isVisible.toggle()
                    }
                } label: {
                    Text(isVisible ? "Hide" : "Show")
                }
                
                Button("Change Color") {
                    if color != .purple {
                        color = .purple
                    } else {
                        color = .red
                    }
                }
                
            }
            .buttonStyle(.borderedProminent)

        }
        
    }
}

#Preview {
    BasicAnimationExample()
}
