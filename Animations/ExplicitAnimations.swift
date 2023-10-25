//
//  ExplicitAnimations.swift
//  Animations
//
//  Created by SCOTT CROWDER on 10/25/23.
//

import SwiftUI

struct ExplicitAnimations: View {
    
    @State private var animationAmount: Double = 0.0
    
    var body: some View {
        VStack {
            Button {
                withAnimation(.spring(duration: 1, bounce: 0.5)) {
                    animationAmount += 360
                    print(animationAmount)
                }
            } label: {
                Text("Tap Me")
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            Text("X-Axis")
                .padding(50)
                .background(.linearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom))
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: 20))
                .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 0, z: 0)
                )
            Text("Y-Axis")
                .padding(50)
                .background(.linearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom))
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: 20))
                .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0)
                )
            Text("Z-Axis")
                .padding(50)
                .background(.linearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom))
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: 20))
                .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 0, z: 1)
                )
            Text("Multi-Axi")
                .padding(50)
                .background(.linearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom))
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: 20))
                .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 0, z: 1)
                )
        }
        
        
    }
}

#Preview {
    ExplicitAnimations()
}
