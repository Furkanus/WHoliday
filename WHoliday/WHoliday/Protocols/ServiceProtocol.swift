//
//  ServiceProtocol.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/4/21.
//

import Foundation


protocol ServiceClientProtocol {
    func getData(countryCode : String?  , year : String? ,completion : @escaping (Result< [Holiday] , HolidayError >) -> Void)
}
