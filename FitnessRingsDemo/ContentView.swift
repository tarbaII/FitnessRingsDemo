//
//  ContentView.swift
//  FitnessRingsDemo
//
//  Created by Alyx Ferrari on 4/27/22.
//

import SwiftUI

struct ContentView: View {
    @State var redRing: Float = 0.0
    @State var greenRing: Float = 0.0
    @State var blueRing: Float = 0.0
    var body: some View {
        VStack {
            FitnessRings($redRing, $greenRing, $blueRing)
                .onAppear {
                    withAnimation {
                        redRing = 0.7
                        greenRing = 0.6
                        blueRing = 0.8
                    }
                }
                .padding()
            Button("Reset") {
                withAnimation {
                    redRing = 0.0
                    greenRing = 0.0
                    blueRing = 0.0
                }
            }
            Button("Linear") {
                withAnimation(.linear) {
                    redRing = 0.7
                    greenRing = 0.6
                    blueRing = 0.8
                }
            }
            Button("Ease In") {
                withAnimation(.easeIn) {
                    redRing = 0.7
                    greenRing = 0.6
                    blueRing = 0.8
                }
            }
            Button("Ease Out") {
                withAnimation(.easeOut) {
                    redRing = 0.7
                    greenRing = 0.6
                    blueRing = 0.8
                }
            }
            Button("Ease In/Out") {
                withAnimation(.easeInOut) {
                    redRing = 0.7
                    greenRing = 0.6
                    blueRing = 0.8
                }
            }
            Button("Spring") {
                withAnimation(.spring()) {
                    redRing = 0.7
                    greenRing = 0.6
                    blueRing = 0.8
                }
            }
        }
    }
}
