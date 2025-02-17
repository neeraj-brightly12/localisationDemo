//
//  FeatureViewModel.swift
//  LocalisationDemoApp
//
//  Created by Neeraj soni on 16/02/25.
//

import Foundation
import LocalizationKit

public class FeatureViewModel {
    private let localization: LocalizationProvider

    public init(localization: LocalizationProvider) {
        self.localization = localization
    }

    public func getLocalizedTitle() -> String {
        return localization.localized("feature_title")
    }
}

