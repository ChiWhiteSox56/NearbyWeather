//
//  AboutScreen.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/25/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

import XCTest

class AboutScreen: BaseScreen {

    lazy var buttonBack = buttons[AboutScreenStrings.buttonBack].firstMatch
    lazy var navigationBarTitle = otherElements[TopNavigationBarTitleStrings.about.rawValue].firstMatch
    lazy var textAboutPageTitle = staticTexts[AboutScreenStrings.textPageTitle].firstMatch
    lazy var textAppVersionAndBuild = staticTexts[AboutScreenStrings.textAppVersionAndBuild].firstMatch
    lazy var sectionHeaderResources = otherElements[AboutScreenStrings.sectionHeaderResources].firstMatch
    lazy var listItemRateThisVersion = staticTexts[AboutScreenStrings.listItemRateThisVersion].firstMatch
    lazy var listItemSuggestFeatureReportBug = staticTexts[AboutScreenStrings.listItemSuggestFeatureReportBug].firstMatch
    lazy var buttonGitHub = buttons[AboutScreenStrings.buttonGitHub].firstMatch
    lazy var buttonMail = buttons[AboutScreenStrings.buttonMail].firstMatch

    lazy var sectionHeaderContributors = otherElements[AboutScreenStrings.sectionHeaderContributors].firstMatch
    lazy var listItemErikMartens = staticTexts[AboutScreenStrings.listItemErikMartens].firstMatch
    lazy var listItemRyanRosello = staticTexts[AboutScreenStrings.listItemRyanRosello].firstMatch
    lazy var listItemHowToContribute = staticTexts[AboutScreenStrings.listItemHowToContribute].firstMatch
    lazy var listItemSourceCodeViaGitHub = staticTexts[AboutScreenStrings.listItemSourceCodeViaGitHub].firstMatch

    lazy var sectionHeaderLibraries = otherElements[AboutScreenStrings.sectionHeaderLibraries].firstMatch
    lazy var listItemAlamofire = staticTexts[AboutScreenStrings.listItemAlamofire].firstMatch
    lazy var listItemAPTimeZones = staticTexts[AboutScreenStrings.listItemAPTimeZones].firstMatch
    lazy var listItemFMDB = staticTexts[AboutScreenStrings.listItemFMDB].firstMatch
    lazy var listItemPKHUD = staticTexts[AboutScreenStrings.listItemPKHUD].firstMatch
    lazy var listItemRSwift = staticTexts[AboutScreenStrings.listItemRSwift].firstMatch
    lazy var listItemRainyRefreshControl = staticTexts[AboutScreenStrings.listItemRainyRefreshControl].firstMatch
    lazy var listItemTextFieldCounter = staticTexts[AboutScreenStrings.listItemTextFieldCounter].firstMatch

    lazy var sectionHeaderIcons = otherElements[AboutScreenStrings.sectionHeaderIcons].firstMatch
    lazy var listItemIcons8 = staticTexts[AboutScreenStrings.listItemIcons8].firstMatch


    func isDisplayedAsExpected() -> Bool {
        return waitForElement(predicate: .isHittable, element: buttonBack, timeout: 10)
            && waitForElement(predicate: .isHittable, element: navigationBarTitle)
            && waitForElement(predicate: .isHittable, element: textAboutPageTitle)
            && waitForElement(predicate: .isHittable, element: textAppVersionAndBuild)
            && waitForElement(predicate: .exists, element: sectionHeaderResources)
            && waitForElement(predicate: .exists, element: listItemRateThisVersion)
            && waitForElement(predicate: .exists, element: listItemSuggestFeatureReportBug)
            && waitForElement(predicate: .exists, element: buttonGitHub)
            && waitForElement(predicate: .exists, element: buttonMail)
            && waitForElement(predicate: .exists, element: listItemErikMartens)
            && waitForElement(predicate: .exists, element: listItemRyanRosello)
            && waitForElement(predicate: .exists, element: listItemHowToContribute)
            && waitForElement(predicate: .exists, element: listItemSourceCodeViaGitHub)
            && waitForElement(predicate: .exists, element: sectionHeaderLibraries)
            && waitForElement(predicate: .exists, element: listItemAlamofire)
            && waitForElement(predicate: .exists, element: listItemAPTimeZones)
            && waitForElement(predicate: .exists, element: listItemFMDB)
            && waitForElement(predicate: .exists, element: listItemPKHUD)
            && waitForElement(predicate: .exists, element: listItemRSwift)
            && waitForElement(predicate: .exists, element: listItemRainyRefreshControl)
            && waitForElement(predicate: .exists, element: listItemTextFieldCounter)
            && waitForElement(predicate: .exists, element: sectionHeaderIcons)
            && waitForElement(predicate: .exists, element: listItemIcons8)
    }

    @discardableResult
    func tapButtonBack() -> AboutScreen {
        waitForElement(predicate: .isHittable, element: buttonBack)
        buttonBack.tap()
        return self
    }

    @discardableResult
    func tapRateThisVersion() -> AboutScreen {
        waitForElement(predicate: .isHittable, element: listItemRateThisVersion)
        listItemRateThisVersion.tap()
        return self
    }

    @discardableResult
    func tapButtonGitHub() -> AboutScreen {
        waitForElement(predicate: .isHittable, element: buttonGitHub)
        buttonGitHub.tap()
        return self
    }

    @discardableResult
    func tapButtonMail() -> AboutScreen {
        waitForElement(predicate: .isHittable, element: buttonMail)
        buttonMail.tap()
        return self
    }

    @discardableResult
    func tapListItemErikMartens() -> AboutScreen {
        waitForElement(predicate: .isHittable, element: listItemErikMartens)
        listItemErikMartens.tap()
        return self
    }
}
