//
//  Rings.swift
//  FitnessRingsDemo
//
//  Created by Alyx Ferrari on 4/27/22.
//

import SwiftUI

struct Ring: View {
    @State var color: Color?
    @Binding var progress: Float
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 25.0)
                .opacity(0.4)
                .foregroundColor(color)
            Circle()
                .trim(from: 0.0, to: CGFloat(progress))
                .stroke(style: StrokeStyle(lineWidth: 25.0, lineCap: .round))
                .foregroundColor(color)
                .rotationEffect(Angle(degrees: 270.0))
                .shadow(radius: 15)
        }
    }
}
