//
//  Extension+TextField.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 08/12/2022.
//

import UIKit
 
extension UITextField {
    
    func toolbarAccessoryView(_ items: [UIBarButtonItem]) {
        // Create toolBar
        let toolBar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 44))
        toolBar.barTintColor = .appResource.primaryBackgroundLight
        toolBar.isTranslucent = false
        
        toolBar.setItems(items, animated: true)
        self.inputAccessoryView = toolBar
    }
    
}
