//
//  MasterLabel.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 03/01/2023.
//

import UIKit

@IBDesignable

class MasterLabel: UILabel {
    private var textEdgeInsets = UIEdgeInsets.zero {
        didSet { invalidateIntrinsicContentSize() }
    }
    
    open override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        let insetRect = bounds.inset(by: textEdgeInsets)
        let textRect = super.textRect(forBounds: insetRect, limitedToNumberOfLines: numberOfLines)
        let invertedInsets = UIEdgeInsets(top: -textEdgeInsets.top, left: -textEdgeInsets.left, bottom: -textEdgeInsets.bottom, right: -textEdgeInsets.right)
        return textRect.inset(by: invertedInsets)
    }
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: textEdgeInsets))
    }
    
    func setPadding(_ insets: UIEdgeInsets) {
        self.textEdgeInsets = insets
    }
    
}

/*
    A anotação @IBDesignable é usada em desenvolvimento para designar que uma classe personalizada ou
    uma subclasse de uma classe de Interface Builder (como UIView, UIButton, UILabel, etc.) pode ser
    renderizada e visualizada diretamente na Interface Builder no Xcode. Essa funcionalidade é
    particularmente útil para criar componentes de interface personalizados e ver como eles serão
    exibidos no ambiente de design antes de serem executados no aplicativo.
*/
