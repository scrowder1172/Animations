//
//  CustomizingAnimations.swift
//  Animations
//
//  Created by SCOTT CROWDER on 10/25/23.
//

import SwiftUI

struct CustomizingAnimations: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Rectangle()
                    .frame(width: .infinity, height: 1)
                
                HStack {
                    NavigationLink {
                        LinearButtonAnimation()
                    } label: {
                        Text("Linear Button Animation")
                    }
                    .frame(width: 150, height: 50)
                    .background(.green)
                    .clipShape(.capsule)
                    
                    Rectangle()
                        .frame(width: 1, height: 50)
                    
                    NavigationLink {
                        BouncyButtonAnimation()
                    } label: {
                        Text("Bouncy Button")
                    }
                    .frame(width: 150, height: 50)
                    .background(.green)
                    .clipShape(.capsule)
                }
                    
                Rectangle()
                    .frame(width: .infinity, height: 1)
            
                HStack {
                    NavigationLink {
                        EaseInButtonAnimation()
                    } label: {
                        Text("Ease In")
                    }
                    .frame(width: 150, height: 50)
                    .background(.green)
                    .clipShape(.capsule)
                    
                    Rectangle()
                        .frame(width: 1, height: 50)
                    
                    NavigationLink {
                        DelayedEaseInButtonAnimation()
                    } label: {
                        Text("Delayed Ease In")
                    }
                    .frame(width: 150, height: 50)
                    .background(.green)
                    .clipShape(.capsule)
                }
                
                Rectangle()
                    .frame(width: .infinity, height: 1)
                
                HStack {
                    NavigationLink {
                        RepeatEaseInButtonAnimation()
                    } label: {
                        Text("Repeat Ease In")
                    }
                    .frame(width: 150, height: 50)
                    .background(.green)
                    .clipShape(.capsule)
                    
                    Rectangle()
                        .frame(width: 1, height: 50)
                    
                    NavigationLink {
                        JumpyButtonAnimation()
                    } label: {
                        Text("Jumpy Animation")
                    }
                    .frame(width: 150, height: 50)
                    .background(.green)
                    .clipShape(.capsule)
                }
                
                Rectangle()
                    .frame(width: .infinity, height: 1)
                
                HStack {
                    
                    NavigationLink {
                        RepeatForeverButtonAnimation()
                    } label: {
                        Text("Repeat Animation")
                    }
                    .frame(width: 150, height: 50)
                    .background(.green)
                    .clipShape(.capsule)
                    
                    Rectangle()
                        .frame(width: 1, height: 50)
                    
                    NavigationLink {
                        ContinuousButtonAnimation()
                    } label: {
                        Text("Continuous Animation")
                    }
                    .frame(width: 150, height: 50)
                    .background(.green)
                    .clipShape(.capsule)
                }
                
                Rectangle()
                    .frame(width: .infinity, height: 1)
            }
            
        }
        
    }
}

struct LinearButtonAnimation: View {
    
    @State private var animationAmount: Double = 1.0
    var body: some View {
        Button {
            animationAmount += 1
        } label: {
            Text("Tap Me")
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.linear, value: animationAmount)
    }
}

struct BouncyButtonAnimation: View {
    
    @State private var animationAmount: Double = 1.0
    var body: some View {
        Button {
            animationAmount += 1
        } label: {
            Text("Tap Me")
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
    }
}

struct EaseInButtonAnimation: View {
    
    @State private var animationAmount: Double = 1.0
    var body: some View {
        Button {
            animationAmount += 0.25
        } label: {
            Text("Tap Me")
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .animation(
            .easeInOut(duration: 2),
            value: animationAmount
        )
    }
}

struct DelayedEaseInButtonAnimation: View {
    
    @State private var animationAmount: Double = 1.0
    var body: some View {
        Button {
            animationAmount += 0.25
        } label: {
            Text("Tap Me")
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .padding(50)
        .animation(
            .easeInOut(duration: 2)
                .delay(1),
            value: animationAmount
        )
    }
}

struct RepeatEaseInButtonAnimation: View {
    
    @State private var animationAmount: Double = 1.0
    var body: some View {
        Button {
            animationAmount += 0.25
        } label: {
            Text("Tap Me")
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .animation(
            .easeInOut(duration: 2)
                .repeatCount(3, autoreverses: true),
            value: animationAmount
        )
    }
}

struct JumpyButtonAnimation: View {
    
    @State private var animationAmount: Double = 1.0
    var body: some View {
        Button {
            animationAmount += 0.25
        } label: {
            Text("Tap Me")
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .animation(
            .easeInOut(duration: 2)
                .repeatCount(2, autoreverses: true),
            value: animationAmount
        )
    }
}

struct RepeatForeverButtonAnimation: View {
    
    @State private var animationAmount: Double = 1.0
    var body: some View {
        Button {
            animationAmount += 0.25
        } label: {
            Text("Tap Me")
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .animation(
            .easeInOut(duration: 2)
                .repeatForever(autoreverses: true),
            value: animationAmount
        )
    }
}

struct ContinuousButtonAnimation: View {
    
    @State private var animationAmount: Double = 1.0
    var body: some View {
        Spacer()
        Button {
            //animationAmount += 0.25
        } label: {
            Text("Tap Me")
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 12)
                        .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 2
        }
        Spacer()
        
    }
}

#Preview {
    CustomizingAnimations()
}
