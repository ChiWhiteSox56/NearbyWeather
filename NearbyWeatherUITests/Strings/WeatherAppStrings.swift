//
//  WeatherAppStrings.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/24/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

struct AboutScreenStrings {
    static let buttonBack = "Settings"
    static let textPageTitle = "NearbyWeather - Open Source Weather"
    static let textAppVersionAndBuild = "Version 2.0 Build #7"
    static let sectionHeaderResources = "RESOURCES"
    static let listItemRateThisVersion = "Rate this Version"
    static let listItemSuggestFeatureReportBug = "Suggest a Feature | Report a Bug"
    static let buttonGitHub = "GitHub"
    static let buttonMail = "Mail"
    static let sectionHeaderContributors = "CONTRUBUTORS"
    static let listItemErikMartens = "Erik Maximilian Martens"
    static let listItemRyanRosello = "Ryan Rosello"
    static let listItemHowToContribute = "How to Contribute"
    static let listItemSourceCodeViaGitHub = "Source Code via GitHub"
    static let sectionHeaderLibraries = "LIBRARIES"
    static let listItemAlamofire = "Alamofire"
    static let listItemAPTimeZones = "APTimeZones"
    static let listItemFMDB = "FMDB"
    static let listItemPKHUD = "PKHUD"
    static let listItemRSwift = "R.swift"
    static let listItemRainyRefreshControl = "RainyRefreshControl"
    static let listItemTextFieldCounter = "TextFieldCounter"
    static let sectionHeaderIcons = "ICONS"
    static let listItemIcons8 = "Icons8"
}

struct AddLocationScreenStrings {
    static let textFieldSearchByName = "Search by Name"
    static let buttonCancel = "Cancel"
}

struct ListScreenStrings {
    static let defaultLocation = "Cupertino"
    static let allLocations = ["Cupertino", "New York"]
}

struct LocationAccessScreenStrings {
    static let locationAccessMessage = "In order to get weather data for nearby places, NearbyWeather requires access to your current location. You may use NearbyWeather without disclosing your coordinates, although this limits the app's functionality."
    static let buttonConfigure = "CONFIGURE"
}

struct SettingsScreenStrings {
    static let sectionHeaderGeneral = "GENERAL"
    static let listItemAbout = "About"
    static let listItemRefreshOnAppStart = "Refresh on App Start"
    static let switchRefreshOnAppstart = "Refresh on App Start"

    static let sectionHeaderOpenWeatherMapApi = "OPENWEATHERMAP API"
    static let listItemApiKey = "API Key" 

    static let sectionBookmarks = "BOOKMARKS"
    static let listItemManageLocations = "Manage Locations"
    static let listItemAddLocations = "Add Location"

    static let sectionHeaderPreferences = "PREFERENCES"
    static let listItemAmountOfResults = "Amount of Results" // FIXME: Contains Amount of Results + x results
    static let listItemSortingOrientation = "Sorting Orientation" // FIXME: Contains Sortion Orientation
    static let listItemTemperatureUnit = "Temperature Unit"
    static let listItemDistanceSpedUnit = "Distance/Speed Unit"
}

struct TopNavigationBarStrings {
    static let buttonSwap = "swap"
    static let buttonLocation = ""
}

struct WelcomeScreenStrings {
    static let apiKey = "cbe28f5aac5e4891de9076024cd62e37"
    static let textEnterApiKey = "Please enter your Open Weather Map API key below. You can change this within the settings later."
    static let buttonSave = "SAVE"
    static let buttonDontHaveAnApiKey = "DON'T HAVE AN API KEY?"
}


enum BottomTab: String {
    case list = "LIST"
    case map = "MAP"
    case settings = "SETTINGS"
}

enum MapType: String {
    case map = "Map"
    case satellite = "Satellite"
    case hybrid = "Hybrid"
    case cancel = "Cancel"
}

enum SettingsAmountOfResults: String {
    case ten = "10 Results"
    case twenty = "20 Results"
    case thirty = "30 Results"
    case forty = "40 Results"
    case fifty = "50 Results"
    case cancel = "Cancel"
}

enum SettingsDisplanceSpeedUnit: String {
    case metric = "Metric"
    case imperial = "Imperial"
    case cancel = "Cancel"
}

enum SettingsSortingOrientation: String {
    case byName = "By Name"
    case byTemperature = "By Temperature"
    case byDistance = "By Distance"
    case cancel = "Cancel"
}

enum SettingsTemperatureUnit: String {
    case celsius = "Celsius"
    case farenheit = "Fahrenheit"
    case kelvin = "Kelvin"
    case cancel = "Cancel"
}

enum TopNavigationBarTitleStrings: String {
    case about = "About"
    case addLocation = "Add Location"
    case list = "List"
    case map = "Map"
    case settings = "Settings"
}

enum ListLocations: String, CaseIterable {
    case cupertino = "Cupertino"
    case newYork = "New York"
}
