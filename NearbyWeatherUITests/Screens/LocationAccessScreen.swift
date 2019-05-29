//
//  LocationAccessScreen.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/25/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

import XCTest

class LocationAccessScreen: BaseScreen {

    private lazy var textLocationAccessMessage = staticTexts[LocationAccessScreenStrings.locationAccessMessage].firstMatch
    private lazy var buttonConfigure = buttons[LocationAccessScreenStrings.buttonConfigure].firstMatch

    func isDisplaedAsExpected() -> Bool {
        return waitForElement(predicate: .isHittable, element: textLocationAccessMessage, timeout: 30)
            && waitForElement(predicate: .isHittable, element: buttonConfigure)
    }

    @discardableResult
    func tapButtonConfigure() -> LocationAccessScreen {
        waitForElement(predicate: .isHittable, element: buttonConfigure)
        buttonConfigure.tap()
        return self
    }
}
