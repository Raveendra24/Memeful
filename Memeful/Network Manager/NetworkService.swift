//
//  NetworkService.swift
//  Memeful
//
//  Created by Raveendra on 15/12/19.
//  Copyright © 2019 Raveendra. All rights reserved.
//

import Foundation
import Alamofire

protocol CFLURLRequestConvertible {
    func httpRequest() -> URLRequest?
}

enum Result<T, E> where E: Error {
    case success(T)
    case failure(E)
}

enum APIError: Error {
    case invalidData
    case requestFailed
    case jsonConversionFailure
    case jsonParsingFailure
    case responseUnsuccessful
    
    var localizedDescription: String {
        switch self {
        case .invalidData:
            return "Invalid Data"
        case .requestFailed:
            return "Request Failed"
        case .jsonConversionFailure:
            return "JSON Conversion Failure"
        case .jsonParsingFailure:
            return "JSON Parsing Failure"
        case .responseUnsuccessful:
            return "Response Unsuccessful"
        }
    }
}

class NetworkService {
    static let shared = NetworkService()
    typealias jsonTaskCompletionHandler = (Decodable?, APIError?) -> Void
    
    func startService<T: Decodable> (request: URLRequestConvertible, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void) {
        Alamofire.request(request).responseString(completionHandler: { response in
            if response.result.isSuccess {
                if let data = response.data {
                    do {
                        let genericModel = try JSONDecoder().decode(T.self, from: data)
                        completion(Result.success(genericModel))
                    } catch {
                        completion(Result.failure(.jsonConversionFailure))
                    }
                } else {
                    completion(Result.failure(.invalidData))
                }
            } else {
                completion(Result.failure(.responseUnsuccessful))
            }
        })
    }
}
