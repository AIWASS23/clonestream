//
//  DashboardViewController.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 26/12/2022.
//

import UIKit

class DashboardViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addChildViewControllerWithView(OnBoardingFirstViewController())
    }

}
