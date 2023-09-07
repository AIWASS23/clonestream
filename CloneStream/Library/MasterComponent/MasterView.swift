//
//  MasterView.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 09/12/2022.
//

import UIKit

class MasterView: UIView {

    convenience init() {
        self.init(frame: .zero)
        self.setupViews()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupViews()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.setupLayoutSubviews()
    }
    
    func setupViews() {
        
    }
    
    func setupLayoutSubviews() {
        
    }

}
