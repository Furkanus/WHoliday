//
//  DateServiceProtocol.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/8/21.
//

import Foundation


protocol CurrentYearService {
    func getCurrentYear() -> Int
}

protocol CurrentDateService {
    func getCurrentDate() -> String
}
