//
//  APICaller+Certification.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 21/12/2022.
//

import Foundation

enum CertificationType: String {
    case movie = "movie"
    case tv = "tv"
}

extension APICaller {
    
    func certification(type: ListType, completion: @escaping (CertificationResponses) -> Void) {
        let url = appConfig.hostUrl + "certification/movie/list"
        appService.requestAPI(url: url, method: .get, objectType: CertificationResponses.self) { (isSuccess, data, statusCode)  in
            completion(data as! CertificationResponses)
        }
    }
}
