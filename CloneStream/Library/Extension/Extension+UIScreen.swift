//
//  Extension+UIScreen.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 30/12/2022.
//

import UIKit

extension UIScreen {
    
    static var topWindow: UIWindow? {
        return UIApplication
            .shared
            .connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }
    }
    
    static var edges: UIEdgeInsets? {
        return self.topWindow?.safeAreaInsets
    }
    
    static var size: CGSize {
        return self.main.bounds.size
    }
    
}
