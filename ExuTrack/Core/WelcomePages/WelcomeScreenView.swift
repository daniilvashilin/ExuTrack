//
//  WelcomeScreenView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 02/11/2024.
//

import SwiftUI

struct WelcomeScreenView: View {
    @State var selection = 1
    var body: some View {
        NavigationStack {
            VStack {
                TabView(selection: $selection,
                        content:  {
                    WelcomeToView()
                        .tag(1)
                    StayFocusedView()
                        .tag(2)
                    BalanceView()
                        .tag(3)
                    GetStartedView()
                        .tag(4)
                })
                .tabViewStyle(.page(indexDisplayMode: selection < 4 ? .always : .never))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .background(.colorBackground)
                
            }
        }
    }
}

#Preview {
    WelcomeScreenView()
}
