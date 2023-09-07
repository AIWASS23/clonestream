//
//  ConfigurationResponse.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 24/12/2022.
//

import Foundation

struct APIConfigurationResponse: Codable {
    var images: Images?
    var changeKeys: [String]?
    
    enum CodingKeys: String, CodingKey {
        case images
        case changeKeys = "change_keys"
    }
}

struct CountriesConfigurationResponse: Codable {
    var countryCode: String?
    var englishName: String?
    
    enum CodingKeys: String, CodingKey {
        case countryCode = "iso_3166_1"
        case englishName = "english_name"
    }
}

struct JobsConfigurationResponse: Codable {
    var department: String?
    var jobs: [String]?
}

struct LanguagesConfigurationResponse: Codable {
    var language: Language?
    var englishName: String?
    var name: String?
    
    enum CodingKeys: String, CodingKey {
        case language = "iso_639_1"
        case englishName = "english_name"
        case name
    }
}
