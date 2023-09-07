//
//  APICaller.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 20/12/2022.
//

import UIKit
import Alamofire

class APICaller {
    
    /// Shared class
    static let shared: APICaller = APICaller()
    
    let appService = AppService()
    
    let appConfig = AppConfig()
    
}
