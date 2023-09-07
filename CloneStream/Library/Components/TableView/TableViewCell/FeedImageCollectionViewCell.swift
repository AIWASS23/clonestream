//
//  FeedImageCollectionViewCell.swift
//  Netflix Clone
//
//  Created by Marcelo de Araújo on 07/12/2022.
//

import UIKit

class FeedImageCollectionViewCell: UICollectionViewCell {
        
    static let identifier = "FeedImageCollectionViewCellID"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .yellow
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
