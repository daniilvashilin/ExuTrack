//
//  TabBarView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 01/11/2024.
//

import SwiftUI

struct TabBarView: View {
    @State var isPressed = false
    @Binding var selecteTab: TabBarModel
    var body: some View {
        GeometryReader { geom in
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.black.opacity(0.9))
                    .frame(width: geom.size.width * 0.6, height: geom.size.height * 0.1)
                HStack(spacing: geom.size.width * 0.1) {
                    Button {
                        selecteTab = .home
                    } label: {
                        Image(systemName: "house.fill")
                            .font(.title)
                            .foregroundStyle(selecteTab == .home ? .orange : .white)
                            .scaleEffect(selecteTab == .home ? 1.2 : 1.0)
                    }
                    Button {
                        selecteTab = .add
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .foregroundStyle(selecteTab == .add ? .orange : .white)
                            .scaleEffect(selecteTab == .add ? 1.2 : 1.0)
                    }
                    Button {
                        selecteTab = .User
                    } label: {
                        Image(systemName: "person.fill")
                            .font(.title)
                            .foregroundStyle(selecteTab == .User ? .orange : .white)
                            .scaleEffect(selecteTab == .User ? 1.2 : 1.0)
                    }
                }
            }
            .frame(width: geom.size.width, height: geom.size.height * 0.1)
        }
    }
}

#Preview {
    TabBarView(selecteTab: .constant(.add))
}
