//
//  Extension+UIGestureRecognizer.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 11/01/2023.
//

import UIKit

extension UIGestureRecognizer {
    
    static func tapGesture(target: Any?, action: Selector?) -> UITapGestureRecognizer {
        let elsewhereTap = UITapGestureRecognizer(target: target, action: action)
        return elsewhereTap
    }
    
}
