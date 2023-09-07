//
//  Extension+UINavigationController.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 09/01/2023.
//

import UIKit

extension UINavigationController {
    
    func isExistViewController(_ viewController: UIViewController) -> Bool {
        if let viewControllers = self.navigationController?.viewControllers {
            for vc in viewControllers where vc.isKind(of: viewController.classForCoder) {
                return true
            }
        }
        return false
    }
    
}
