//
//  ExercisesListModel.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 01/11/2024.
//

import Foundation

class ExercisesListModel: ObservableObject {
    
    @Published var exercisesStorage: [ExercisesModel] = []
    
    enum difficulty: String, Codable {
        case low
        case average
        case high
    }
    struct ExercisesModel: Codable, Identifiable {
        let exerciseName: String
        let exerciseDescription: String
        let exerciseLevel: difficulty
        let exerciseImage: String
        let exerciseId: String
        
        var id: String {
            return exerciseId
        }
    }
    
    func loadExercises() {
        if let url = Bundle.main.url(forResource: "MyTestingJsonFile", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let exercises = try JSONDecoder().decode([ExercisesModel].self, from: data)
                DispatchQueue.main.async {
                    self.exercisesStorage = exercises // Обновляем данные в основном потоке
                }
            } catch {
                print("Error loading or decoding JSON: \(error)")
            }
        }
    }
    
    // Новый метод для фильтрации упражнений
    func filteredExercises(for searchText: String) -> [ExercisesModel] {
        if searchText.isEmpty {
            return exercisesStorage // Показываем весь список, если нет текста поиска
        } else {
            return exercisesStorage.filter { exercise in
                exercise.exerciseName.lowercased().contains(searchText.lowercased())
            }
        }
    }
}
