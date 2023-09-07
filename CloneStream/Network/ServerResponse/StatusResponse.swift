//
//  StatusResponse.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 21/12/2022.
//

import Foundation

struct StatusResponse: Codable {
    
    var isSuccess: Bool
    
    enum CodingKeys: String, CodingKey {
        case isSuccess = "success"
    }
    
}
