//
//  RecordView.swift
//  Record Player
//
//  Created by Omer Cagri Sayir on 2.02.2024.
//

import SwiftUI

struct RecordView: View {
    @Binding var degrees: Double
    @Binding var shouldAnimate: Bool
    
    var body: some View {
        Image("record")
            .resizable()
            .frame(width: 275, height: 275)
            .shadow(color: .gray, radius: 1, x:0, y: 0)
            .rotationEffect(Angle.degrees(degrees))
            .animation(.linear(duration: shouldAnimate ? 60 : 0).delay(1.5))
    }
}

#Preview {
    RecordView(degrees: .constant(2.0), shouldAnimate: .constant(true))
}
