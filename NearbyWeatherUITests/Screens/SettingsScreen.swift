//
//  SettingsScreen.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/20/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

import XCTest

class SettingsScreen: BaseScreen {

    private lazy var navigationBarTitle = staticTexts[TopNavigationBarTitleStrings.settings.rawValue].firstMatch
    private lazy var sectionHeaderGeneral = otherElements[SettingsScreenStrings.sectionHeaderGeneral].firstMatch
    private lazy var listItemAbout = staticTexts[SettingsScreenStrings.listItemAbout].firstMatch
    private lazy var listItemRefreshOnAppStart = staticTexts[SettingsScreenStrings.listItemRefreshOnAppStart].firstMatch
    private lazy var switchRefreshOnAppStart = switches[SettingsScreenStrings.switchRefreshOnAppstart].firstMatch

    private lazy var sectionHeaderOpenWeatherMapApi = otherElements[SettingsScreenStrings.sectionHeaderOpenWeatherMapApi].firstMatch
    private lazy var listItemApiKey = staticTexts[SettingsScreenStrings.listItemApiKey].firstMatch

    private lazy var sectionHeaderBookmarks = otherElements[SettingsScreenStrings.sectionBookmarks].firstMatch
    private lazy var listItemManageLocations = staticTexts[SettingsScreenStrings.listItemManageLocations].firstMatch
    private lazy var listItemAddLocation = staticTexts[SettingsScreenStrings.listItemAddLocations].firstMatch

    private lazy var sectionHeaderPreferences = otherElements[SettingsScreenStrings.sectionHeaderPreferences].firstMatch
    private lazy var listItemAmountOfResults = staticTexts[SettingsScreenStrings.listItemAmountOfResults].firstMatch
    private lazy var listItemSortingOrientation = staticTexts[SettingsScreenStrings.listItemSortingOrientation].firstMatch
    private lazy var listItemTemperatureUnit = staticTexts[SettingsScreenStrings.listItemTemperatureUnit].firstMatch
    private lazy var listItemDistanceSpeedUnit = staticTexts[SettingsScreenStrings.listItemDistanceSpedUnit].firstMatch


    func isDisplayedAsExpected() -> Bool {
        return waitForElement(predicate: .isHittable, element: sectionHeaderGeneral)
            && waitForElement(predicate: .isHittable, element: listItemAbout)
            && waitForElement(predicate: .isHittable, element: listItemRefreshOnAppStart)
            && waitForElement(predicate: .isHittable, element: switchRefreshOnAppStart)
            && waitForElement(predicate: .isHittable, element: sectionHeaderOpenWeatherMapApi)
            && waitForElement(predicate: .isHittable, element: listItemApiKey)
            && waitForElement(predicate: .isHittable, element: sectionHeaderBookmarks)
            && waitForElement(predicate: .isHittable, element: listItemManageLocations)
            && waitForElement(predicate: .isHittable, element: listItemAddLocation)
            && waitForElement(predicate: .isHittable, element: sectionHeaderPreferences)
            && waitForElement(predicate: .isHittable, element: listItemAmountOfResults)
            && waitForElement(predicate: .isHittable, element: listItemSortingOrientation)
            && waitForElement(predicate: .isHittable, element: listItemTemperatureUnit)
            && waitForElement(predicate: .isHittable, element: listItemDistanceSpeedUnit)
    }

    @discardableResult
    func tapListItemAbout() -> SettingsScreen {
        waitForElement(predicate: .isHittable, element: listItemAbout)
        listItemAbout.tap()
        return self
    }

    @discardableResult
    func tapSwitchRefreshOnAppStart() -> SettingsScreen {
        waitForElement(predicate: .isHittable, element: switchRefreshOnAppStart)
        switchRefreshOnAppStart.tap()
        return self
    }

    @discardableResult
    func refreshOnAppStartIsEnabled() -> Bool {
        return waitForElement(predicate: .isEnabled, element: switchRefreshOnAppStart) // FIXME: make sure this shouldn't be isSelected
    }

    @discardableResult
    func tapListItemApiKey() -> SettingsScreen {
        waitForElement(predicate: .isHittable, element: listItemApiKey)
        listItemApiKey.tap()
        return self
    }

    @discardableResult
    func tapListItemManageLocations() -> SettingsScreen {
        waitForElement(predicate: .isHittable, element: listItemManageLocations)
        listItemManageLocations.tap()
        return self
    }

    @discardableResult
    func tapListItemAddLocation() -> SettingsScreen {
        waitForElement(predicate: .isHittable, element: listItemAddLocation)
        listItemAddLocation.tap()
        return self
    }

    func tapListItemAmountOfResults() -> SettingsScreen {
        waitForElement(predicate: .exists, element: listItemAmountOfResults)
        listItemAmountOfResults.tap()
        return self
    }

    func tapListItemSortingOrientation() -> SettingsScreen {
        waitForElement(predicate: .exists, element: listItemSortingOrientation)
        listItemSortingOrientation.tap()
        return self
    }

    func tapListItemTemperatureUnit() -> SettingsScreen {
        waitForElement(predicate: .exists, element: listItemTemperatureUnit)
        listItemTemperatureUnit.tap()
        return self
    }

    func tapListItemDistanceSpeedUnit() -> SettingsScreen {
        waitForElement(predicate: .exists, element: listItemDistanceSpeedUnit)
        listItemDistanceSpeedUnit.tap()
        return self
    }
}
