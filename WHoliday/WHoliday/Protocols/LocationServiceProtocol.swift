//
//  LocationServiceProtocol.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/8/21.
//

import Foundation


@objc protocol LocationServiceProtocol {
    func getCountryInfo() -> String
    @objc optional func getCountryFlag(countryCode : String) -> String
}
