//
//  RecordPlayerBox.swift
//  Record Player
//
//  Created by Omer Cagri Sayir on 2.02.2024.
//

import SwiftUI

struct RecordPlayerBox: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 345, height: 345)
                .cornerRadius(10)
            
            Image("woodGrain")
                .resizable()
                .frame(width: 325, height: 325)
                .shadow(color: .white, radius: 3)
        }
    }
}

#Preview {
    RecordPlayerBox()
}
