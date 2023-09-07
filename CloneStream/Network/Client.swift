//
//  Client.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 21/12/2022.
//

import Foundation
import Alamofire

struct ClientReturn: Codable {
    var isSuccess: Bool?
    var data: Data?
}

public struct MDBReturn {
    public var error: Error?
    public var data: Data?
    public var response: URLResponse?

    init(err: Error?, data: Data?, reponse: URLResponse?) {
        error = err
        self.data = data
        self.response = reponse
    }
}
