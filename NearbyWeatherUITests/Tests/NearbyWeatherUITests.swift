//
//  NearbyWeatherUITests.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 05.26.19.
//  Copyright © 2019 Cindy Michalowski. All rights reserved.
//

import XCTest

class NearbyWeatherUITests: XCTestCase {

    let aboutScreen = AboutScreen()
    let addLocationScreen = AddLocationScreen()
    let bottomTabBar = BottomTabBar()
    let listScreen = ListScreen()
    let settingsScreen = SettingsScreen()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testNavigateToSettingsScreen_SettingsScreenIsDisplayedAsExpected() {

        bottomTabBar
            .tapTabSettings()

        XCTAssert(settingsScreen.isDisplayedAsExpected(), "The Settings Screen is displayed as expected")
    }

    func testAddLocationNewYork_VerifyNewYorkIsDisplayedOnList() {

        bottomTabBar
            .tapTabSettings()

        settingsScreen
            .tapListItemAddLocation()

        addLocationScreen
            .searchLocationByName("New York, US")
            .tapSelectedCityInSearchResults("New York, US")

        bottomTabBar
            .tapTabList()

        XCTAssert(listScreen.isDisplayedAsExpected(locations: ListScreenStrings.allLocations), "The List Screen displays weather data for Cupertino and New York")
    }
}
