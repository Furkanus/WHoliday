//
//  Holiday.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/4/21.
//

import Foundation


struct Holiday : Codable  , Hashable {
    let date : String
    let localName : String
    let name : String
    let countryCode : String
}
