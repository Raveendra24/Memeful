//
//  TokenProvider.swift
//  Memeful
//
//  Created by Raveendra on 15/12/19.
//  Copyright © 2019 Raveendra. All rights reserved.
//

import Foundation
import UIKit

protocol TokenDelegate: class {
    func loginSuccessfull()
//    func sessionExpired()
}

class TokenProvider {
    private let clientID = "3c2821bc2936232"
    private let clientSecret = "65c4223ede9163278443b6255eeb7f3959d52b20"
    var userDict: [String: AnyObject] = [:]
    static let shared = TokenProvider()
    weak var tokenDelegate: TokenDelegate?
    
    private init() {}

    func parseToken(url: URL) {
        if let urlComponents = url.absoluteString.components(separatedBy:"#").last {
            for keyValue in urlComponents.components(separatedBy: "&") {
                userDict[keyValue.components(separatedBy: "=").first ?? ""] = keyValue.components(separatedBy: "=").last as AnyObject?
            }
        }
        UserDefaults.standard.set(userDict, forKey: "LOGGEDIN_USER")
        UserDefaults.standard.synchronize()
        self.tokenDelegate?.loginSuccessfull()
    }

    func requestToken() {
        if let authURL = URL(string: "https://api.imgur.com/oauth2/authorize?client_id=0baff9d9519e374&response_type=token&state=APPLICATION_STATE") {
            UIApplication.shared.open(authURL, options: [:], completionHandler: nil)
        }
    }
    
    var accessToken: String {
        return userDict["access_token"] as? String ?? ""
    }
}
