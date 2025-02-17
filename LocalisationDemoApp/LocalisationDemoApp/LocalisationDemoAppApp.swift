//
//  LocalisationDemoAppApp.swift
//  LocalisationDemoApp
//
//  Created by Neeraj soni on 16/02/25.
//

import SwiftUI

@main
struct LocalisationDemoAppApp: App {
    @StateObject private var localizationManager = LocalizationManager()

        var body: some Scene {
            WindowGroup {
                ContentView()
                    .environmentObject(localizationManager) //  Passes LocalizationManager globally
            }
        }
    }
