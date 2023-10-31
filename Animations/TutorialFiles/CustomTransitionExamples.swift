//
//  CustomTransitionExamples.swift
//  Animations
//
//  Created by SCOTT CROWDER on 10/25/23.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading),
                  identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}

extension AnyTransition {
    static var pivotReverse: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: 90, anchor: .topLeading),
                  identity: CornerRotateModifier(amount: -180, anchor: .topLeading))
    }
}

struct CustomTransitionExamples: View {
    @State private var isShowingRed: Bool = false
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            } else {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivotReverse)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingRed.toggle()
            }
        }
    }
}

#Preview {
    CustomTransitionExamples()
}
