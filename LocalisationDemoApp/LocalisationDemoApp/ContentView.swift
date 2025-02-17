//
//  ContentView.swift
//  LocalisationDemoApp
//
//  Created by Neeraj soni on 16/02/25.
//

import SwiftUI
import SwiftUI
import LocalizationKit

struct ContentView: View {
    @EnvironmentObject var localizationManager: LocalizationManager

    var body: some View {
        NavigationView {
            VStack {
                Text("home_title".localized)
                    .font(.largeTitle)
                    .padding()

                NavigationLink(destination: FeatureView()) {
                    Text("feature_title".localized)
                }
            }
            .navigationTitle("home_title".localized)
        }
    }
}
