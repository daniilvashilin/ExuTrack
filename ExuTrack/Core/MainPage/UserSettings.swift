//
//  AddView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 01/11/2024.
//

import SwiftUI

struct UserSettings: View {
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    var body: some View {
        ZStack {
            Color.colorBackground
                
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.settings.opacity(1))
                        .frame(height: 250)
                    VStack {
                        Image(.test)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120)
                            .clipShape(Circle())
                        Text("Daniil Vaschilin")
                            .font(.title2)
                        Text("daniilvashcilin@icloud.com")
                    }
                }
                .padding(.vertical)
                List {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack {
                            Image(systemName: "pencil")
                            Text("Change name")
                            Spacer()
                            Text(">")
                        }
                    })
                    Button(action: {isDarkMode.toggle()}, label: {
                        HStack {
                            Image(systemName: "moon")
                            Text("Dark mode")
                            Spacer()
                            Toggle("", isOn: $isDarkMode)
                        }
                    })
                    Button(action: {}, label: {
                        HStack {
                            Image(systemName: "externaldrive.badge.icloud")
                            Text("Pool data")
                            Spacer()
                            Text(">")
                        }
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack {
                            Image(systemName: "questionmark.circle")
                            Text("Support")
                            Spacer()
                            Text(">")
                        }
                    })
                }
                .listRowSpacing(10)
                .background(Color.clear)
                .scrollContentBackground(.hidden)
                .foregroundStyle(.text)
            }
        }
        .padding()
        .background(.colorBackground)
    }
}

#Preview {
    UserSettings()
}
