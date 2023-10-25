//
//  AnimationGesturesExamples.swift
//  Animations
//
//  Created by SCOTT CROWDER on 10/25/23.
//

import SwiftUI

struct AnimationGesturesExamples: View {
    
    @State private var dragAmount: CGSize = CGSize.zero
    @State private var dragAmountExplicit: CGSize = CGSize.zero
    
    let letters = Array("Hello SwiftUI")
    @State private var enabled: Bool = false
    @State private var dragAmountLetters: CGSize = CGSize.zero
    
    var body: some View {
        VStack {
            // Implicit Animation
            LinearGradient(colors: [.blue, .red], startPoint: .top, endPoint: .bottom)
                .frame(width: 300, height: 200)
                .clipShape(.rect(cornerRadius: 10))
                .offset(dragAmount)
                .gesture(
                    DragGesture()
                        .onChanged({dragAmount = $0.translation})
                        .onEnded{_ in dragAmount = .zero}
                )
                .animation(.bouncy, value: dragAmount)
            
            
            // Explicit Animation
            LinearGradient(colors: [.green, .black], startPoint: .topLeading, endPoint: .bottomLeading)
                .frame(width: 300, height: 200)
                .clipShape(.rect(cornerRadius: 10))
                .offset(dragAmountExplicit)
                .gesture(
                    DragGesture()
                        .onChanged({dragAmountExplicit = $0.translation})
                        .onEnded{_ in
                            withAnimation(.bouncy) {
                                dragAmountExplicit = .zero
                            }
                        }
                )
                .animation(.bouncy, value: dragAmountExplicit)
            
            HStack(spacing: 0) {
                        ForEach(0..<letters.count, id: \.self) { num in
                            Text(String(letters[num]))
                                .padding(5)
                                .font(.title)
                                .background(enabled ? .blue : .red)
                                .offset(dragAmountLetters)
                                .animation(.linear.delay(Double(num) / 20), value: dragAmountLetters)
                        }
                    }
                    .gesture(
                        DragGesture()
                            .onChanged { dragAmountLetters = $0.translation }
                            .onEnded { _ in
                                dragAmountLetters = .zero
                                enabled.toggle()
                            }
                    )
            
        }
    }
}

#Preview {
    AnimationGesturesExamples()
}
