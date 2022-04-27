//
//  FitnessRings.swift
//  FitnessRingsDemo
//
//  Created by Alyx Ferrari on 4/27/22.
//

import SwiftUI

struct FitnessRings: View {
    @Binding var redRing: Float
    @Binding var greenRing: Float
    @Binding var blueRing: Float
    init(_ redRing: Binding<Float>, _ greenRing: Binding<Float>, _ blueRing: Binding<Float>) {
        self._redRing = redRing
        self._greenRing = greenRing
        self._blueRing = blueRing
    }
    var body: some View {
        ZStack {
            Ring(color: Color.red, progress: $redRing)
                .frame(width: 150.0, height: 150.0)
            Ring(color: Color.green, progress: $greenRing)
                .frame(width: 205.0, height: 205.0)
            Ring(color: Color.blue, progress: $blueRing)
                .frame(width: 260.0, height: 260.0)
        }
        .shadow(radius: 15)
        .frame(maxWidth: .infinity)
    }
}

