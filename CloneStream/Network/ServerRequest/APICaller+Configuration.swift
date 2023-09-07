//
//  APICaller+Configuration.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 24/12/2022.
//

import Foundation

extension APICaller {
    
    func getAPIConfiguration(completion: @escaping (APIConfigurationResponse) -> Void) {
        let url = appConfig.hostUrl + "configuration"
        appService.requestAPI(url: url, method: .get, objectType: APIConfigurationResponse.self) { isSuccess, data, statusCode in
            completion(data as! APIConfigurationResponse)
        }
    }
    
    func getCountriesConfiguration(completion: @escaping (CountriesConfigurationResponse) -> Void) {
        let url = appConfig.hostUrl + "configuration/countries"
        appService.requestAPI(url: url, method: .get, objectType: CountriesConfigurationResponse.self) { isSuccess, data, statusCode in
            completion(data as! CountriesConfigurationResponse)
        }
    }
    
    func getJobsConfiguration(completion: @escaping (JobsConfigurationResponse) -> Void) {
        let url = appConfig.hostUrl + "configuration/jobs"
        appService.requestAPI(url: url, method: .get, objectType: JobsConfigurationResponse.self) { isSuccess, data, statusCode in
            completion(data as! JobsConfigurationResponse)
        }
    }
    
    func getLanguagesConfiguration(completion: @escaping (LanguagesConfigurationResponse) -> Void) {
        let url = appConfig.hostUrl + "configuration/languages"
        appService.requestAPI(url: url, method: .get, objectType: LanguagesConfigurationResponse.self) { isSuccess, data, statusCode in
            completion(data as! LanguagesConfigurationResponse)
        }
    }
    
    func getPrimaryTranslationConfiguration(completion: @escaping (_ array:[String]) -> Void) {
        let url = appConfig.hostUrl + "configuration/primary_translations"
        appService.requestAPI(url: url, method: .get, objectType: [String].self) { isSuccess, data, statusCode in
            completion(data as! [String])
        }
    }
    
    func getTimeZonesConfiguration(completion: @escaping (TimeZones) -> Void) {
        let url = appConfig.hostUrl + "configuration/timezones"
        appService.requestAPI(url: url, method: .get, objectType: TimeZones.self) { isSuccess, data, statusCode in
            completion(data as! TimeZones)
        }
    }
    
}
