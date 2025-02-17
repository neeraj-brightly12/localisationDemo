//
//  FeatureView.swift
//  LocalisationDemoApp
//
//  Created by Neeraj soni on 16/02/25.
//

import SwiftUI
import LocalizationKit

struct FeatureView: View {
    @EnvironmentObject var localizationManager: LocalizationManager

    var body: some View {
        VStack {
            Text("feature_title".localized)
                .font(.headline)
                .padding()
        }
        VStack {
            Text("feature_title".localized)
                .font(.headline)
                .padding()
        }
    }
}

