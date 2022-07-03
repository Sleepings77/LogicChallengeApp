//
//  NetWorking.swift
//  GlobalLogicChallenge
//
//  Created by Matias on 01/07/2022.
//

import Foundation
import Alamofire

enum NetworkingManager {
    enum NetworkingError : Error {
        case parsingError
    }
    
    static func getResponse(completion: @escaping (Result<[ObjectAPI], Error>) -> Void) {
        let request = AF.request (
            "https://private-f0eea-mobilegllatam.apiary-mock.com/list",
            method: HTTPMethod.get
            )
        
        request.responseData { (response: AFDataResponse<Data>) in
            guard let data = response.data else {
                completion (.failure(NetworkingError.parsingError))
                return
            }
            
            let decoder = JSONDecoder()
            let response = try? decoder.decode([ObjectAPI].self, from: data)
            
            completion(.success(response ?? []))
        }
    }
}
