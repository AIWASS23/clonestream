//
//  AppConfig.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 08/12/2022.
//

import UIKit

/// This class is used for server-related application configuration management.
public class AppConfig: NSObject {
    
    static let shared: AppConfig = AppConfig()
    
    /// Host base url
    let hostUrl: String = "https://api.themoviedb.org/3/"
    
    /// API key
    var apiKey: String {
        get {
            return "YOUR_API_KEY"
        }
        set {
            _ = newValue
        }
    }
    
    // MARK: - Authentication
    
    /// Token value
    var userRequestToken: String {
        get {
            return UserDefaults.standard.string(forKey: "request_token") ?? ""
        }
    }
    
    /// Session id
    var userSessionId: String {
        get {
            return UserDefaults.standard.string(forKey: "session_id") ?? ""
        }
    }
    
    /// Guest Session id
    var userGuestSessionId: String {
        get {
            return UserDefaults.standard.string(forKey: "guest_session_id") ?? ""
        }
    }
    
    /// Username of User
    var userUsername: String {
        get {
            return UserDefaults.standard.string(forKey: "username") ?? ""
        }
    }
    
    /// Password of User
    var userPassword: String {
        get {
            return UserDefaults.standard.string(forKey: "password") ?? ""
        }
    }
    
}

// MARK: - Extension
extension AppConfig {
    
    
}
