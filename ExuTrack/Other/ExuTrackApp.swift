//
//  ExuTrackApp.swift
//  ExuTrack
//
//  Created by Daniil Vaschilin on 01/11/2024.
//

import SwiftUI

@main
struct ExuTrackApp: App {
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    var body: some Scene {
        WindowGroup {
            WelcomeScreenView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
