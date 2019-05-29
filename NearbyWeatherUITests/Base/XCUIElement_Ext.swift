//
//  XCUIElement_Ext.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/25/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

import XCTest

extension XCUIElement {

    func clearText() {
        guard let stringValue = self.value as? String else {
            return
        }

        var deleteString = String()
        for _ in stringValue {
            deleteString += XCUIKeyboardKey.delete.rawValue
        }
        self.typeText(deleteString)
    }

    public func scrollToElement(element: XCUIElement) {
        while !element.visible() {
            let startCoord = XCUIApplication().tables.element.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.5))
            let endCoord = startCoord.withOffset(CGVector(dx: 0.0, dy: -262))
            startCoord.press(forDuration: 0.01, thenDragTo: endCoord)
        }
    }

    public func visible() -> Bool {
        guard self.exists && !self.frame.isEmpty else { return false }
        return XCUIApplication().windows.element(boundBy: 0).frame.contains(self.frame)
    }
}
