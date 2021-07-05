//
//  LocationService.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/3/21.
//


import CoreLocation

class LocationManager  {
    static let shared = LocationManager()
    
    init() {
        
    }
    
    func getCountryInfo() -> Locale {
        let countryCode = Locale.current
        return countryCode
    }
    
    func countryFlag(countryCode: String ) -> String {
      return String(String.UnicodeScalarView(
         countryCode.unicodeScalars.compactMap(
           { UnicodeScalar(127397 + $0.value) })))
    }

  
}

