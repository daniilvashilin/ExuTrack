import Foundation

class UserProgressModel: ObservableObject {
    
    @Published var userExercisesStorage: [UserExercises] = [] {
        didSet {
            print("Current exercises: \(userExercisesStorage)")
        }
    }
    
    init() {
        print("UserProgressModel initialized")
    }
    
    struct UserExercises: Identifiable {
        var id: String
        var name: String
        var replays: Int
        var approaches: Int
        var weight: Double
        var userExercisesImage: String
    }
    
    func addUserExercise(id: String, name: String, replays: Int, approaches: Int, weight: Double, userExercisesImage: String) {
        if userExercisesStorage.contains(where: { $0.id == id }) {
            print("You already have one")
        } else {
            let newExercise = UserExercises(
                id: id,
                name: name,
                replays: replays,
                approaches: approaches,
                weight: weight,
                userExercisesImage: userExercisesImage
            )
            userExercisesStorage.append(newExercise)
            print("Added exercise: \(newExercise)")
            print("Current storage count: \(userExercisesStorage.count)")
        }
    }
}
