//
//  GetStartedView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 02/11/2024.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        VStack {
            Spacer()
        Image(.run)
                .renderingMode(.template)
                .foregroundStyle(.text)
            VStack(alignment: .leading) {
                Text("Get started")
                    .font(.largeTitle)
                Text("Run to your dream")
                Text("With our App")
            }
            .padding(.top)
            Spacer()
            NavigationLink(destination: SingInPageView()) {
                Text("Next")
                    .padding(15)
                    .frame(width: 120)
                    .background(.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .foregroundStyle(.white)
            }
        }
        .padding(.bottom)
    }
}

#Preview {
    GetStartedView()
}
