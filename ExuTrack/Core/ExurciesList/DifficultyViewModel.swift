//
//  DifficultyViewModel.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 01/11/2024.
//

import SwiftUI

struct DifficultyViewModel: View {
    @Binding var dif: ExercisesListModel.difficulty
    var body: some View {
        HStack(alignment: .bottom) {
            Text("difficulty:")
                .font(.caption2)
                .foregroundStyle(.gray)
            switch dif {
            case .low:
                RoundedRectangle(cornerRadius: 25)
                    .fill(.green)
                    .frame(width: 3, height: 10)
                RoundedRectangle(cornerRadius: 25)
                    .fill(.gray)
                    .frame(width: 3, height: 15)
                RoundedRectangle(cornerRadius: 25)
                    .fill(.gray)
                    .frame(width: 3, height: 25)
            case .average:
                RoundedRectangle(cornerRadius: 25)
                    .fill(.green)
                    .frame(width: 3, height: 10)
                RoundedRectangle(cornerRadius: 25)
                    .fill(.green)
                    .frame(width: 3, height: 15)
                RoundedRectangle(cornerRadius: 25)
                    .fill(.gray)
                    .frame(width: 3, height: 20)
            case .high:
                RoundedRectangle(cornerRadius: 25)
                    .fill(.green)
                    .frame(width: 3, height: 10)
                RoundedRectangle(cornerRadius: 25)
                    .fill(.green)
                    .frame(width: 3, height: 15)
                RoundedRectangle(cornerRadius: 25)
                    .fill(.green)
                    .frame(width: 3, height: 20)
            }
        }
    }
}

#Preview {
    DifficultyViewModel(dif: .constant(.low))
}
