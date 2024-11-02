//
//  HeaderView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 02/11/2024.
//

import SwiftUI

struct HeaderView: View {
    @State var imageHide: String
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: imageHide)
                .font(.largeTitle)
                .foregroundStyle(.text)
            Spacer()
            Button(action: {
                // Setting action
                // Edit
            }, label: {
                HStack(spacing: 2) {
                    Circle()
                        .fill(.text)
                        .frame(width: 7, height: 7)
                    Circle()
                        .fill(.text)
                        .frame(width: 7, height: 7)
                    Circle()
                        .fill(.text)
                        .frame(width: 7, height: 7)
                }
            })
        }
        .padding(.horizontal)
    }
}

#Preview {
    HeaderView(imageHide: "person.circle.fill")
}
