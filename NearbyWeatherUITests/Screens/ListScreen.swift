//
//  ListScreen.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/20/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

import XCTest

class ListScreen: BaseScreen {

    lazy var locationListItem: (String) -> XCUIElement = { XCUIApplication().tables.staticTexts[$0].firstMatch }


    func isDisplayedAsExpected(locations: [String]) -> Bool {
        for location in locations {
            if !waitForElement(predicate: .exists, element: locationListItem(location)) {
                return false
            }
        }
        return true
    }

    @discardableResult
    func tapLocationListItem(location: String) -> ListScreen {
        waitForElement(predicate: .isHittable, element: locationListItem(location))
        locationListItem(location).tap()
        return self
    }
}
