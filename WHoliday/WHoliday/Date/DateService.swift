//
//  DateService.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/8/21.
//

import Foundation


class DateService : DateServiceProtocol  {
    
    static let shared = DateService()
    
    init() {
        
    }
    
    func getCurrentYear() -> Int {
        let year = Calendar.current.component(.year, from: Date())
        return year
    }
}
