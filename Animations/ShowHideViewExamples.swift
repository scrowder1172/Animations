//
//  ShowHideViewExamples.swift
//  Animations
//
//  Created by SCOTT CROWDER on 10/25/23.
//

import SwiftUI

struct ShowHideViewExamples: View {
    @State private var isShown: Bool = true
    var body: some View {
        Button("Tap Me") {
            withAnimation {
                isShown.toggle()
            }
            
        }
        if isShown {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
                .transition(.scale)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
                .transition(.asymmetric(insertion: .slide, removal: .opacity))
        }
        
    }
}

#Preview {
    ShowHideViewExamples()
}
