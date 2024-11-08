//
//  HomePageView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 01/11/2024.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var viewModelUser: UserProgressModel
    @State var isPresend = false
    var body: some View {
        if viewModelUser.userExercisesStorage.isEmpty {
            Text("List is empty")
        } else {
            VStack {
                List(viewModelUser.userExercisesStorage) { exercise in
                    Button {
                        isPresend = true
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
                    .sheet(isPresented: $isPresend, content: {
                        AddParametersToExerciseView()
                    })
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
