//
//  HomePageView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 01/11/2024.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var viewModelUser: UserProgressModel
    var body: some View {
        if viewModelUser.userExercisesStorage.isEmpty {
            Text("List is empty")
        } else {
            VStack {
                List(viewModelUser.userExercisesStorage) { exercise in
                    Button {
                        //
                    } label: {
                        HStack {
                            Image(exercise.userExercisesImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 50)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .clipped()
                                .padding(.trailing)
                            Text(exercise.name)
                                .font(.headline)
                                .foregroundStyle(.text)
                            Spacer()
                        }
                    }
                    .listRowBackground(Color.colorBackground)
                }
                .listRowSpacing(0)
                .background(Color.clear)
                .scrollContentBackground(.hidden)
            }
        }
    }
}

#Preview {
    HomePageView()
        .environmentObject(UserProgressModel())
}
