//
//  ContentView.swift
//  Record Player
//
//  Created by Omer Cagri Sayir on 29.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var rotateRecord = false
    @State private var rotateArm = false
    @State private var shouldAnimate = false
    @State private var degrees = 0.0
    
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.white, .black]), 
                           center: .center, startRadius: 20, endRadius: 600)
                .scaleEffect(1.2)
            
            RecordPlayerBox()
                .offset(y: -100)
            
            VStack {
                RecordView(degrees: $degrees, shouldAnimate: $shouldAnimate)
                ArmView(rotateArm: $rotateArm)
                
                Button {
                    shouldAnimate.toggle()
                    if shouldAnimate {
                        degrees = 36000
                        rotateArm.toggle()
                    } else {
                        rotateArm.toggle()
                        degrees = 0
                    }
                } label: {
                    HStack(spacing: 0) {
                        if !shouldAnimate {
                            Text("Play")
                            Image(systemName: "play.circle.fill")
                                .imageScale(.large)
                        } else {
                            Text("Stop")
                            Image(systemName: "stop.fill")
                                .imageScale(.large)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 10)
                    .background(Capsule().strokeBorder(Color.black, lineWidth: 1.25))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
