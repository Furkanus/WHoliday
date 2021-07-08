//
//  LocationService.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/3/21.
//


import CoreLocation

class LocationManager :  LocationServiceProtocol  {
    static let shared = LocationManager()
    
    init() {
        
    }
    
    func getCountryInfo() -> String {
        let preferredLanguage = Locale.preferredLanguages[1].prefix(2)
        return String(preferredLanguage)
    }
    
    func getCountryFlag(countryCode: String ) -> String {
      return String(String.UnicodeScalarView(
         countryCode.unicodeScalars.compactMap(
           { UnicodeScalar(127397 + $0.value) })))
    }

  
}

