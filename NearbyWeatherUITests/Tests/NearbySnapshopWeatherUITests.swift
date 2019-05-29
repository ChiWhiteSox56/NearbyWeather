//
//  NearbySnapshopWeatherUITests.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/27/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

import FBSnapshotTestCase
@testable import Pods_NearbyWeather

class NearbySnapshopWeatherUITests: FBSnapshotTestCase {

    let bottomTabBar = BottomTabBar()
    let mapScreen = MapScreen()

    override func setUp() {
        super.setUp()
        self.recordMode = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testNavigateToMapScreen_VerifyScreenIsDisplayedAsExpected() {

        bottomTabBar
            .tapTabMap()

        print("Wait here")

        let imageView = UIImageView(image: XCUIApplication().screenshot().image)
        FBSnapshotVerifyView(imageView)

    }
}
