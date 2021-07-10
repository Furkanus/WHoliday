//
//  Constants.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/4/21.
//

import Foundation


struct Constants {
    struct Network {
        static let baseUrl = "https://date.nager.at/api/v3/publicholidays/"
    }
    
    struct Texts {
        static let enterYear = "Enter Year Here!"
        static let fetch = "Fetch"
        static let enterCountry = "Enter country code here!"
        static let infos = "Holiday Infos"
        static let localName = "Local Name:"
        static let name = "Name:"
        static let date = "Date:"
        
        
        enum Error {
            static let ok = "OK"
            static let oops = "Oops"
            static let wrong = "Wrong Value!"
            static let noResultsFound = "No results found"
            static let occured = "An error occured please try again!"
            static let cannotEmpty = "Your value cannot be empty!"
        }
    }
    
    struct Style {
        enum Image {
            static let map = "map"
        }
    }
  
    

}
