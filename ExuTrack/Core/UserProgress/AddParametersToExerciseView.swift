//
//  AddParametersToExerciseView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 08/11/2024.
//

import SwiftUI

struct AddParametersToExerciseView: View {
    @EnvironmentObject var viewModelUser: UserProgressModel
    @State private var weight: String = ""
    @State private var reps: String = ""
    @State private var approach: String = ""
    @State private var weightValue: Double? = nil
    @State private var repsValue: Double? = nil
    @State private var approachValue: Double? = nil
    @State private var selectedExerciseId: String? = nil
    var body: some View {
        VStack {
            ForEach(viewModelUser.userExercisesStorage) {exercise in
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
                }
            }
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    Text("Weight")
                        .font(.caption)
                        .padding(.horizontal)
                    TextField("0", text: $weight)
                        .padding()
                        .keyboardType(.decimalPad)
                        .onChange(of: weight) { oldValue, newValue in
                            weightValue = Double(newValue)
                        }
                        .keyboardType(.decimalPad)
                        .textFieldStyle(.roundedBorder)
                }
                VStack(alignment: .leading) {
                    Text("repetitions")
                        .font(.caption)
                        .padding(.horizontal)
                    TextField("0", text: $reps)
                        .padding()
                        .onChange(of: reps) { oldValue, newValue in
                            repsValue = Double(newValue)
                        }
                        .keyboardType(.decimalPad)
                        .textFieldStyle(.roundedBorder)
                }
                VStack(alignment: .leading) {
                    Text("approaches")
                        .font(.caption)
                        .padding(.horizontal)
                    TextField("0", text: $approach)
                        .padding()
                        .onChange(of: approach) { oldValue ,newValue in
                            approachValue = Double(newValue)
                        }
                        .keyboardType(.decimalPad)
                        .textFieldStyle(.roundedBorder)
                }
            }
            .padding()
            Button {
                //
            } label: {
                Text("Add")
            }

        }
    }
}

#Preview {
    AddParametersToExerciseView()
        .environmentObject(UserProgressModel())
}
