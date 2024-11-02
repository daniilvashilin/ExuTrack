//
//  HomePageView.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 01/11/2024.
//

import SwiftUI

struct HomePageView: View {
    @State var isemptytest = true
    var body: some View {
        VStack {
            HStack {
                Text("Your exercises")
                    .font(.title)
                    .padding()
                Spacer()
            }
            Spacer()
                Text("You dont have any exercises")
            Spacer()
        }
    }
}

#Preview {
    HomePageView()
}
