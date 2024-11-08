import SwiftUI

struct ContentView: View {
    @State var TabBarVm: TabBarModel = .home
    @EnvironmentObject var viewModelUser: UserProgressModel
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                if TabBarVm == .User {
                    HeaderView(imageHide: "questionmark.circle")
                        .padding()
                } else {
                    HeaderView(imageHide: "person.circle.fill")
                        .padding()
                }
                ZStack {
                    switch TabBarVm {
                    case .home:
                        HomePageView()
                            .onAppear {
                                print("Storage in HomePageView: \(viewModelUser.userExercisesStorage)")
                            }
                    case .add:
                        ExercisesListView()
                            .onAppear {
                                print("Storage in HomePageView: \(viewModelUser.userExercisesStorage)")
                            }
                    case .User:
                        UserSettings()
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height * 0.8)
                TabBarView(selecteTab: $TabBarVm).environmentObject(viewModelUser)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .background(.colorBackground)
                    .padding(.bottom)
            }
        }
        .background(.colorBackground)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ContentView()
}
