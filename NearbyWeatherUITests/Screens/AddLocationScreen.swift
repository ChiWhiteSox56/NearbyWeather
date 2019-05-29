//
//  AddLocationScreen.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/25/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

import XCTest

class AddLocationScreen: BaseScreen {

    lazy var buttonBack = buttons["Settings"].firstMatch
    lazy var navigationBarTitle = otherElements[TopNavigationBarTitleStrings.addLocation.rawValue].firstMatch
    lazy var textFieldSearchByName = searchFields[AddLocationScreenStrings.textFieldSearchByName].firstMatch
    lazy var buttonCancel = buttons[AddLocationScreenStrings.buttonCancel].firstMatch


    func isDisplayedAsExpected() -> Bool {
        return waitForElement(predicate: .isHittable, element: buttonBack, timeout: 10)
            && waitForElement(predicate: .isHittable, element: navigationBarTitle)
            && waitForElement(predicate: .isHittable, element: textFieldSearchByName)
            && waitForElement(predicate: .isHittable, element: buttonCancel)
    }
}
