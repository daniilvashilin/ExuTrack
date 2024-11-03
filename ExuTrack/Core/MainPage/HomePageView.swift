//
//  HomePageView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 01/11/2024.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var viewModel: UserProgressModel // Используем EnvironmentObject
    
    var body: some View {
        if viewModel.userExercisesStorage.isEmpty {
            VStack {
                HStack {
                    Text("Your exercises")
                        .font(.title)
                        .padding()
                    Spacer()
                }
                Spacer()
                Text("You don't have any exercises")
                Spacer()
            }
        } else {
            VStack {
                HStack {
                    Text("Your exercises")
                        .font(.title)
                        .padding()
                    Spacer()
                }
                List(viewModel.userExercisesStorage) { exercise in
                    Button {
                        // action
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
        .environmentObject(UserProgressModel()) // Передача экземпляра модели для предпросмотра
}
