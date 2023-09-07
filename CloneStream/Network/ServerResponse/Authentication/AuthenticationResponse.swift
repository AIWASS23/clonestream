//
//  AuthenticationResponse.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 24/12/2022.
//

import Foundation

struct SessionResponse: Codable {
    var isSuccess: Bool
    var sessionId: String
    
    enum CodingKeys: String, CodingKey {
        case isSuccess = "success"
        case sessionId = "session_id"
    }
}

struct RequestTokenResponse: Codable {
    var isSuccess: Bool
    var requestToken: String
    var expiresAt: String
    
    enum CodingKeys: String, CodingKey {
        case isSuccess = "success"
        case requestToken = "request_token"
        case expiresAt = "expires_at"
    }
}

struct GuestSessionResponse: Codable {
    var isSuccess: Bool
    var guestSessionId: String
    var expiresAt: String
    
    enum CodingKeys: String, CodingKey {
        case isSuccess = "success"
        case guestSessionId = "guest_session_id"
        case expiresAt = "expires_at"
    }
}
