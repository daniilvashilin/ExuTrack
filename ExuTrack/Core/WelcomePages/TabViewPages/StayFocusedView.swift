//
//  StayFocusedView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 02/11/2024.
//

import SwiftUI

struct StayFocusedView: View {
    var body: some View {
        VStack {
            Image(.stayFocused)
                .renderingMode(.template)
                .foregroundStyle(.text)
            VStack(alignment: .leading) {
                Text("Stay focused")
                    .font(.largeTitle)
                Text("Don’t miss anything")
                    .font(.title3)
                Text("Analyze your progress")
                    .font(.title3)
            }
            .padding()
        }
    }
}

#Preview {
    StayFocusedView()
}
