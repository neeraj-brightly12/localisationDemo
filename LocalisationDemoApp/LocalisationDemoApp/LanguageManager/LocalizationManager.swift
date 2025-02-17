//
//  LocalizationManager.swift
//  LocalisationDemoApp
//
//  Created by Neeraj soni on 16/02/25.
//

import SwiftUI
import Combine
import LocalizationKit

class LocalizationManager: ObservableObject, LocalizationProvider {
    @Published var language: String = Localization.currentLanguage

    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(languageChanged), name: .languageChanged, object: nil)
    }

    func localized(_ key: String) -> String {
        return Localization().localized(key)
    }

    @objc private func languageChanged() {
        DispatchQueue.main.async {
            self.language = Localization.currentLanguage
        }
    }
}

