import Foundation

class UserProgressModel: ObservableObject {
    
    @Published var userExercisesStorage: [UserExercises] = []
    @Published var exerciseHistory: [String: [ExerciseParameters]] = [:]
    
    struct ExerciseParameters {
        var date: Date
        var weight: Double
        var repetitions: Int
        var approaches: Int
    }
    
    struct UserExercises: Identifiable {
        var id: String
        var name: String
        var userExercisesImage: String
    }
    
    func addUserExercise(id: String, name: String, userExercisesImage: String) {
        if userExercisesStorage.contains(where: { $0.id == id }) {
            print("You already have one")
        } else {
            let newExercise = UserExercises(
                id: id,
                name: name,
                userExercisesImage: userExercisesImage
            )
            userExercisesStorage.append(newExercise)
        }
        
        func addExerciseParameter(for id: String, parameters: ExerciseParameters) {
            if exerciseHistory[id] != nil {
                exerciseHistory[id]?.append(parameters)
            } else {
                exerciseHistory[id] = [parameters]
            }
        }
        
        func getExerciseHistory(for id: String) -> [ExerciseParameters] {
            return exerciseHistory[id] ?? []
        }
    }
}
