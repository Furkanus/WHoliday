//
//  ServiceClient.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/4/21.
//

import Foundation

final class ServiceClient : ServiceClientProtocol {
    
    @Published private var holidays : [Holiday] = []
    
    func getData(countryCode: String? , year: String?, completion: @escaping (Result<[Holiday], HolidayError>) -> Void) {
        
        guard let url = URL(string: "\(Constants.Network.baseUrl)\(countryCode ?? "TR")\(year ?? "2021")") else {
            completion(.failure(.urlError))
            return
        }
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) { [weak self] data, response, err in
            guard err == nil else {
                completion(.failure(.genericError))
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                completion(.failure(.genericError))
                return
            }
            
            guard response.statusCode == HTTPStatus.succses.rawValue else {
                completion(.failure(.responseError))
                return
            }
            
//            guard response.statusCode == HTTPStatus.failure.rawValue else {
//                completion(.failure(.responseError))
//                return
//            }
            
            switch response.statusCode == 404 {
            case .BooleanLiteralType(true):
                completion(.failure(.responseError))
                
            default:
                break;
             
            }
            
            
            guard let datas = data else {
                completion(.failure(.dataError))
                return
            }
            
            do {
                let dat = try JSONDecoder().decode([Holiday].self, from: datas)

            } catch {
                completion(.failure(.genericError))
            }
        }
        
        .resume()
        
    }
    
    
    
}
