//
//  AnimationStackExample.swift
//  Animations
//
//  Created by SCOTT CROWDER on 10/25/23.
//

import SwiftUI

struct AnimationStackExample: View {
    
    @State private var enabled: Bool = false
    @State private var animationAmount: Double = 0.0
    
    var body: some View {
        Button {
            enabled.toggle()
            animationAmount += 360
        } label: {
            Text("Tap Me")
        }
        .frame(width: 100, height: 100)
        .background(enabled ? .yellow : .cyan)
        .animation(.default, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.9), value: enabled)
        .frame(width: 200, height: 200)
        .background(enabled ? .black : .red)
        .rotation3DEffect(.degrees(animationAmount), axis: (x: -1, y: 0, z: 0))
        .animation(.spring(duration: 1, bounce: 0.9), value: enabled)
    }
}

#Preview {
    AnimationStackExample()
}
