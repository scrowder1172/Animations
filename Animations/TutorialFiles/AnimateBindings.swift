//
//  AnimateBindings.swift
//  Animations
//
//  Created by SCOTT CROWDER on 10/25/23.
//

import SwiftUI

struct AnimateBindings: View {
    @State private var animationAmount: Double = 1.0
    
    var body: some View {
        VStack {
            Stepper("Opacity", value: $animationAmount.animation(), in: 0...1, step: 0.1)
            
            Text("Opacity: \n\((animationAmount * 100).formatted())%")
                .frame(width: 100, height: 100)
                .background(.green)
                .opacity(animationAmount)
                .multilineTextAlignment(.center)

        }
    }
}

#Preview {
    AnimateBindings()
}
