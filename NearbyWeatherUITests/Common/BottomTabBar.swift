//
//  BottomTabBar.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/24/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

import XCTest

class BottomTabBar: BaseScreen {

    private lazy var tabList = buttons[BottomTab.list.rawValue].firstMatch
    private lazy var tabMap = buttons[BottomTab.map.rawValue].firstMatch
    private lazy var tabSettings = buttons[BottomTab.settings.rawValue].firstMatch

    @discardableResult
    func tapTabList() -> BottomTabBar {
        waitForElement(predicate: .isHittable, element: tabList)
        tabList.tap()
        return self
    }

    @discardableResult
    func tapTabMap() -> BottomTabBar {
        waitForElement(predicate: .isHittable, element: tabMap)
        tabMap.tap()
        return self
    }

    @discardableResult
    func tapTabSettings() -> BottomTabBar {
        waitForElement(predicate: .isHittable, element: tabSettings)
        tabSettings.tap()
        return self
    }
}
