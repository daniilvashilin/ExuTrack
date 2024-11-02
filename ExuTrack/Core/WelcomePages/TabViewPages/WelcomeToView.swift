//
//  WelcomeToView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 02/11/2024.
//

import SwiftUI

struct WelcomeToView: View {
    var body: some View {
        VStack {
            Image(.lazy)
                .renderingMode(.template)
                .foregroundStyle(.text)
            VStack(alignment: .leading, spacing: 0) {
                Text("Welcome")
                    .font(.largeTitle)
                HStack {
                    Text("To")
                        .font(.title)
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.purple.opacity(0.5))
                            .frame(width: 110, height: 35)
                        Text("LiftLog")
                            .font(.title.bold())
                    }
                }
                Text("Start tracking your progress")
                    .font(.title3)
            }
            
        }
    }
}

#Preview {
    WelcomeToView()
}
