//
//  WelcomeScreen.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/24/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

import XCTest

class WelcomeScreen: BaseScreen {

    private lazy var textEnterApiKey = staticTexts[WelcomeScreenStrings.textEnterApiKey].firstMatch
    private lazy var textFieldApiKey =         XCUIApplication().scrollViews.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .textField).element
    private lazy var buttonSave = buttons[WelcomeScreenStrings.buttonSave].firstMatch
    private lazy var buttonDontHaveAnApiKey = buttons[WelcomeScreenStrings.buttonDontHaveAnApiKey].firstMatch


    func isDisplayedAsExpected() -> Bool {
        return waitForElement(predicate: .isHittable, element: textEnterApiKey, timeout: 30)
            && waitForElement(predicate: .isHittable, element: textFieldApiKey)
            && waitForElement(predicate: .isHittable, element: buttonSave)
            && waitForElement(predicate: .isHittable, element: buttonDontHaveAnApiKey)
    }

    @discardableResult
    func enterApiKey(_ apiKey: String) ->  WelcomeScreen{
        waitForElement(predicate: .isHittable, element: textFieldApiKey)
        textFieldApiKey.tap()
        textFieldApiKey.typeText(apiKey)
        return self
    }

    @discardableResult
    func tapButtonSave() -> WelcomeScreen {
        waitForElement(predicate: .isHittable, element: buttonSave)
        buttonSave.tap()
        return self
    }

    @discardableResult
    func tapButtonDontHaveAnApiKey() -> WelcomeScreen {
        waitForElement(predicate: .isHittable, element: buttonDontHaveAnApiKey)
        buttonDontHaveAnApiKey.tap()
        return self
    }
}
