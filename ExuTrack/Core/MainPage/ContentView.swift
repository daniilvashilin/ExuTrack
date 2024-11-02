import SwiftUI

struct ContentView: View {
    @State var TabBarVm: TabBarModel = .home

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
                    case .add:
                        ExercisesListView()
                    case .User:
                        UserSettings()
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height * 0.8)
                TabBarView(selecteTab: $TabBarVm)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .background(.colorBackground)
            }
        }
        .background(.colorBackground)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ContentView()
}
