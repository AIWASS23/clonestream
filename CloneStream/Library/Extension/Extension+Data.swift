//
//  Extension+Data.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 20/12/2022.
//

import Foundation

extension Data {
    
    func toCodableObject<T : Codable>() -> T? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .useDefaultKeys
        if let obj = try? decoder.decode(T.self, from: self) {
            return obj
        } else {
            return nil
        }
    }
    
}
