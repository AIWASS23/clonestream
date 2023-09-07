//
//  PrimaryButton.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 30/12/2022.
//

import UIKit


class PrimaryButton: MasterButton {
    
    override func setupViews() {
        super.setupViews()
        let radius: CGFloat = .appResource.primaryButtonPopular.height/2
        self.setBackgroundColor(color: .appResource.primaryRed, cornerRadius: radius, for: .normal)
        self.titleLabel?.font = .medium(size: .appResource.primaryTextSizePopular)
        self.setTitleColor(.appResource.textColor, for: .normal)
        let space: CGFloat = 16.0
        self.contentEdgeInsets = UIEdgeInsets(top: space, left: space, bottom: space, right: space)
    }
    
}

class PrimaryButtonSmall: MasterButton {
    
    override func setupViews() {
        super.setupViews()
        let radius: CGFloat = .appResource.primaryButtonPopular.height/2
        self.setBackgroundColor(color: .appResource.primaryRed, cornerRadius: radius, for: .normal)
        self.titleLabel?.font = .medium(size: .appResource.primaryTextSizePopular)
        self.setTitleColor(.appResource.textColor, for: .normal)
        let space: CGFloat = 16.0
        self.contentEdgeInsets = UIEdgeInsets(top: space/2, left: space, bottom: space/2, right: space)
    }
    
}

import SwiftUI

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PreviewUIViewController(viewController: AuthenticationSelectionViewController())
    }
}

