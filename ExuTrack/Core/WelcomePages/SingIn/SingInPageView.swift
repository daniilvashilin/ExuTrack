//
//  SingInPageView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 02/11/2024.
//

import SwiftUI

struct SingInPageView: View {
    var body: some View {
        ZStack {
            Color.colorBackground
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image(.singIn)
                    .renderingMode(.template)
                Text("Sing in with Apple ID")
                    .font(.largeTitle)
                NavigationLink(destination: ContentView(), label: {
                    Image(systemName: "apple.logo")
                        .padding()
                        .foregroundStyle(.colorBackground)
                        .background(.text)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .font(.title)
                })
                .padding()
                Spacer()
                Text("Need help ?")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    SingInPageView()
}
