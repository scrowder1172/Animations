//
//  ImplicitAnimations.swift
//  Animations
//
//  Created by SCOTT CROWDER on 10/25/23.
//

import SwiftUI

struct ImplicitAnimations: View {
    
    @State private var animationAmount: Double = 1.0
    
    var body: some View {
        NavigationStack {
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
            .animation(.default, value: animationAmount)
            .toolbar {
                Button {
                    animationAmount = 1
                } label: {
                    Text("Reset")
                }
            }
        }
        
    }
}

#Preview {
    ImplicitAnimations()
}
