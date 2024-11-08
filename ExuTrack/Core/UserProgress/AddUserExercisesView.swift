//
//  AddUserExercisesView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 03/11/2024.
//

import SwiftUI

struct AddUserExercisesView: View {
    var shablonID: String
    var shablonName: String
    var shablonRep: Int
    var shanlonApro: Int
    var shablonWeight: Double
    var shablonImage: String
    var shablonDescript: String
    @EnvironmentObject var viewModelUser: UserProgressModel
    var body: some View {
        VStack {
            HStack {
                Image(shablonImage)
                    .resizable()
                    .frame(width: 70, height: 50)
                Text(shablonName)
                    .font(.title.bold())
            }
            Text(shablonDescript)
                .padding()
                .font(.title3)
            
            Button(action: {
                viewModelUser.addUserExercise(id: shablonID, name: shablonName, replays: shablonRep, approaches: shanlonApro, weight: shablonWeight, userExercisesImage: shablonImage)
                print(viewModelUser.userExercisesStorage.count)
                print(viewModelUser.userExercisesStorage)
            }, label: {
                Text("Add")
                    .padding()
                    .frame(width: 150)
                    .background(.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .foregroundStyle(.white)
            })
        }
    }
}

#Preview {
    AddUserExercisesView(
                shablonID: "Squat",
                shablonName: "Squat",
                shablonRep: 1,
                shanlonApro: 1,
                shablonWeight: 1.0,
                shablonImage: "SquatImage",
                shablonDescript: "The squat is a fundamental exercise."
            )
            .environmentObject(UserProgressModel())
}
