//
//  BalanceView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 02/11/2024.
//

import SwiftUI

struct BalanceView: View {
    var body: some View {
        VStack {
            Image(.balance)
                .renderingMode(.template)
                .foregroundStyle(.text)
            VStack(alignment: .leading) {
                Text("Balance")
                    .font(.largeTitle)
                Text("Finding harmony")
                    .font(.title3)
                Text("In your fitness journey")
                    .font(.title3)
            }
            .padding()
        }
    }
}

#Preview {
    BalanceView()
}
