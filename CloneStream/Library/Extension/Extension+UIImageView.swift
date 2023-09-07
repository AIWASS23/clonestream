//
//  Extension+UIImageView.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 28/12/2022.
//

import UIKit

extension UIImageView {
    
    func loadFromUrl(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let resultImage = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = resultImage
                    }
                }
            }
        }
    }
    
}
