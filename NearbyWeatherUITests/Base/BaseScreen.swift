//
//  BaseScreen.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/20/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

import XCTest

protocol BaseScreen {
    
}

extension BaseScreen {
    
    var buttons: XCUIElementQuery {
        return findAll(.button)
    }
    var staticTexts: XCUIElementQuery {
        return findAll(.staticText)
    }
    var searchFields: XCUIElementQuery {
        return findAll(.searchField)
    }
    var switches: XCUIElementQuery {
        return findAll(.switch)
    }
    var textFields: XCUIElementQuery {
        return findAll(.textField)
    }
    var otherElements: XCUIElementQuery {
        return findAll(.other)
    }
    
    func findAll(_ type: XCUIElement.ElementType) -> XCUIElementQuery {
        return XCUIApplication().descendants(matching: type)
    }
    
    @discardableResult
    func waitForElement(predicate: PredicateType, element: XCUIElement, timeout: TimeInterval = 3) -> Bool {
        let format = predicate.format
        let expectation = XCTNSPredicateExpectation(predicate: format, object: element)
        let result = XCTWaiter().wait(for: [expectation], timeout: timeout)
        
        return result == .completed
    }
}

extension NSPredicate {
    static func contains(_ string: String) -> NSPredicate {
        return NSPredicate(format: "label CONTAINS[c] '\(string)'")
    }
}
