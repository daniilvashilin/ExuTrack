import SwiftUI

struct ExercisesListView: View {
    @StateObject var viewModel = ExercisesListModel()
    @State private var searchText = ""
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
                    .listRowBackground(Color.colorBackground)
                }
                .listRowSpacing(0)
                .background(Color.clear)
                .scrollContentBackground(.hidden)
                .onAppear(perform: viewModel.loadExercises)
            }
        }
    }
}

#Preview {
    ExercisesListView()
}
