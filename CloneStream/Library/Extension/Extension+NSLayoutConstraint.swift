//
//  Extension+NSLayoutConstraint.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 03/01/2023.
//

import UIKit

extension NSLayoutConstraint {
    
    override public var description: String {
        let id = identifier ?? ""
        return "id: \(id), constant: \(constant)" //you may print whatever you want here
    }
    
}
