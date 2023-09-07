//
//  Extension+CGSize.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 09/12/2022.
//

import UIKit

extension CGSize {
    
    public init(relative width: CGFloat, relative height: CGFloat) {
        self.init(width: width.relativeToIphone8Width(), height: height.relativeToIphone8Height())
    }
    
}

extension CGSize {
    
    static var appResource: AppStyle {
        return AppStyle.shared
    }
    
}
