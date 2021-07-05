//
//  ServiceClient.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/4/21.
//

import Foundation
import Combine

final class ServiceClient : ServiceClientProtocol , ObservableObject {
    
    @Published private var holidays : [Holiday] = []
    private let locationManager = LocationManager()
    
    func getData(year : String? , countryCode : String?, completion: @escaping (Result<([Holiday]), HolidayError>) -> Void) {
        
        guard let url = URL(string: "\(Constants.Network.baseUrl)\(year ?? "2021")/\(countryCode ?? "TR")") else {
            completion(.failure(.urlError))
            return
        }
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) { data, response, err in
            guard err == nil, let data = data else {
                completion(.failure(.genericError))
                return
            }
            
//            guard let response = response as? HTTPURLResponse else {
//                if let httpResponse = response as? HTTPURLResponse {
//                      print("statusCode: \(httpResponse.statusCode)")
//                  }
//
//                return
//            }
//
//            guard response.statusCode == HTTPStatus.failure.rawValue else {
//                completion(.failure(.responseError))
//                return
//            }
            
            
            do {
                let datas = try JSONDecoder().decode([Holiday].self, from: data)
                DispatchQueue.main.async {
                    completion(.success(datas))
                }
                
            } catch {
                completion(.failure(.decodingError))
                session.invalidateAndCancel()
            }
        }
        
        .resume()
        
    }
    
    
    
}
