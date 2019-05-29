//
//  PredicateType.swift
//  NearbyWeatherUITests
//
//  Created by Cindy Michalowski on 5/20/19.
//  Copyright © 2019 Erik Maximilian Martens. All rights reserved.
//

import XCTest

enum PredicateType {
    case exists
    case doesNotExist
    case isHittable
    case isSelected
    case isEnabled
    case textMatches(String)
    
    var format: NSPredicate {
        switch self {
        case .exists:
            return NSPredicate(format: "exists == true")
        case .doesNotExist:
            return NSPredicate(format: "exists == false")
        case .isHittable:
            return NSPredicate(format: "isHittable == true")
        case .isSelected:
                return NSPredicate(format: "selected == true")
        case .isEnabled:
            return NSPredicate(format: "enabled == true")
        case .textMatches(let text):
            return NSPredicate(format: "label BEGINSWITH[cd] %@", text)
        }
    }
}
