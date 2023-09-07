//
//  APICaller+Companies.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 24/12/2022.
//

import Foundation

extension APICaller {
    
    func getCompanyDetails(companyId: Int!, completion: @escaping (Company) -> Void) {
        let url = appConfig.hostUrl + "/company/" + companyId.description
        appService.requestAPI(url: url, method: .get, objectType: Translation.self) { isSuccess, data, statusCode in
            completion(data as! Company)
        }
        
    }
    
    func getCompanyImages(companyId: Int!, language: Language?, page: Int?, completion: @escaping (Company) -> Void) {
        let url = appConfig.hostUrl + companyId.description + "/images"
        appService.requestAPI(url: url, method: .get, objectType: Translation.self) { isSuccess, data, statusCode in
            completion(data as! Company)
        }
    }
    
    func getCompanyAlternativeNames(companyId: Int!, language: Language?, page: Int?, completion: @escaping (Company) -> Void) {
        let url = appConfig.hostUrl + companyId.description + "/alternative_names"
        appService.requestAPI(url: url, method: .get, objectType: Translation.self) { isSuccess, data, statusCode in
            completion(data as! Company)
        }
    }
    
}
