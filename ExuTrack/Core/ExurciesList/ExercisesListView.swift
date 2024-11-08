import SwiftUI

struct ExercisesListView: View {
    @StateObject var viewModel = ExercisesListModel()
    @EnvironmentObject var viewModelUser: UserProgressModel
    @State private var searchText = ""
    @State var isPresentSheet = false
    @State private var selectedExercise: ExercisesListModel.ExercisesModel?
    @State var rep = 0
    @State var approach = 0
    @State var weights = 0.0
    var body: some View {
        ZStack {
            Color.colorBackground
                .edgesIgnoringSafeArea(.all)
            VStack {
                TextField("Search", text: $searchText)
                    .padding()
                    .background(.text.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .foregroundStyle(.text)
                    .padding(.top)
                    .padding(.horizontal)
                List(viewModel.filteredExercises(for: searchText)) { exercise in
                    Button {
                        isPresentSheet = true
                        selectedExercise = exercise
                        viewModel.loadExercises()
                    } label: {
                        HStack {
                            Image(exercise.exerciseImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 50)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .clipped()
                                .padding(.trailing)
                            Text(exercise.exerciseName)
                                .font(.headline)
                                .foregroundStyle(.text)
                            Spacer()
                            DifficultyViewModel(dif: .constant(exercise.exerciseLevel))
                        }
                    }
                    .listRowBackground(Color.colorBackground)
                }
                .listRowSpacing(0)
                .background(Color.clear)
                .scrollContentBackground(.hidden)
                .onAppear(perform: viewModel.loadExercises)
                .sheet(isPresented: $isPresentSheet, content: {
                    if let exercise = selectedExercise {
                        AddUserExercisesView(shablonID: exercise.exerciseId, shablonName: exercise.exerciseName, shablonRep: rep, shanlonApro: approach, shablonWeight: weights, shablonImage: exercise.exerciseImage, shablonDescript: exercise.exerciseDescription, viewModelUser: _viewModelUser)
                    }
                })
            }
        }
    }
}
#Preview {
    ExercisesListView()
}
