//
//  CloneStreamIntroModel.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 28/12/2022.
//

import UIKit

struct CloneStreamIntroModel: Codable {
    init() {
        self.id = 0
        self.imageUrl = ""
        self.title = ""
        self.subTitle = ""
    }
    
    var id: Int64
    var imageUrl: String
    var title: String
    var subTitle: String
    
    init(id: Int64, imageUrl: String, title: String, subTitle: String) {
        self.id = id
        self.imageUrl = imageUrl
        self.title = title
        self.subTitle = subTitle
    }
}
