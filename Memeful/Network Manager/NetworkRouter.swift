//
//  NetworkRouter.swift
//  Memeful
//
//  Created by Raveendra on 15/12/19.
//  Copyright © 2019 Raveendra. All rights reserved.
//

import Foundation
import Alamofire

enum NetworkRouter: URLRequestConvertible, CFLURLRequestConvertible {
    
    
    case getPopularPost(_ params: [String: Any], page: String)
    
    static let baseUrlPath = "https://api.imgur.com/3/gallery/"

    var method: String {
        return PNetworkRouterHelper.getHTTPMethod(for: self).rawValue
    }
    
    var path: String {
        return PNetworkRouterHelper.getPath(for: self)
    }
    
    var contentType: String {
        return PNetworkRouterHelper.getContentType(for: self)
    }
    
    public func httpRequest() -> URLRequest? {
        let parameters: [String: Any]? = {
            return PNetworkRouterHelper.getParameterDict(for: self)
        }()
        
        if let url = try? NetworkRouter.baseUrlPath.asURL() {
            var request = URLRequest(url: url.appendingPathComponent(path))
            request.httpMethod = method
            
            if request.httpMethod == HTTPMethod.post.rawValue ||
                request.httpMethod == HTTPMethod.delete.rawValue ||
                request.httpMethod == HTTPMethod.put.rawValue {
                return request
            }
            
            return try? URLEncoding.default.encode(request, with: parameters)
        }
        
        return nil
    }
    
    public func asURLRequest() throws -> URLRequest {
        let parameters: [String: Any]? = {
            return PNetworkRouterHelper.getParameterDict(for: self)
        }()
        
        let url = try NetworkRouter.baseUrlPath.asURL()
        var endpoint = path
        switch self {
        case .getPopularPost(_, let page):
            endpoint = endpoint + page
        }
        
        var request = URLRequest(url: url.appendingPathComponent(endpoint))
        request.httpMethod = method
        
        request.setValue("Bearer \(TokenProvider.shared.accessToken)", forHTTPHeaderField: "Authorization")
        request.timeoutInterval = TimeInterval(60)
        
        return try URLEncoding.default.encode(request, with: parameters)
    }
}


// MARK: - Private Helper Classes
fileprivate class PNetworkRouterHelper {
    private struct NetworkEndpoints {
        static let popularPost = "hot/viral/"
    }
    
    class func getHTTPMethod(`for` router: NetworkRouter) -> HTTPMethod {
        switch router {
        case .getPopularPost:
             return .get
        }
    }
    
    class func getPath(`for` router: NetworkRouter) -> String {
        switch router {
        case .getPopularPost:
            return NetworkEndpoints.popularPost
        }
    }
    
    class func getContentType(`for` router: NetworkRouter) -> String {
        switch router {
        case .getPopularPost:
            return NetworkContentType.ApplicationJson
        }
    }
    
    class func getParameterDict(`for` router: NetworkRouter) -> [String: Any]? {
        switch router {
        case .getPopularPost(let params, _):
            return NetworkRouterParameterFactory.getPararmsPopularposts(params)
        }
    }
}

fileprivate class NetworkRouterParameterFactory {
    
    class func getPararmsPopularposts(_ posts: [String: Any]) -> [String: Any] {
        return posts
    }
    
}
