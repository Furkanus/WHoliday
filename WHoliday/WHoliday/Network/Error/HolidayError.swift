//
//  HolidayError.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/4/21.
//

import Foundation

enum HolidayError : String , Error {
    case genericError = "Generic error"
    case decodingError = "Decoding error"
    case writingError = "Writing error"
    case encodingError = "Encoding error"
    case responseError = "Response error"
    case dataError = "Data error"
    case urlError = "Invalid error"
    
}
