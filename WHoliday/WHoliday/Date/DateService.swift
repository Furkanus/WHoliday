//
//  DateService.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/8/21.
//

import Foundation


class DateService : CurrentYearService , CurrentDateService  {
    static let shared = DateService()

    
    func getCurrentDate() -> String {
        let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .short)
        return timestamp
    }
    
    
    
    init() {
        
    }
    
    func getCurrentYear() -> Int {
        let year = Calendar.current.component(.year, from: Date())
        return year
    }
    
}
