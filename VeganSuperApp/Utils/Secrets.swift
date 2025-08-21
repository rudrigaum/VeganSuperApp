//
//  Secrets.swift
//  VeganSuperApp
//
//  Created by Rodrigo Cerqueira Reis on 21/08/25.
//

import Foundation

enum Secrets {
    static let googlePlacesAPIKey: String = {
        guard let key = Bundle.main.infoDictionary?["GOOGLE_PLACES_API_KEY"] as? String,
              !key.isEmpty else {
            fatalError("GOOGLE_PLACES_API_KEY not found in Secrets.xcconfig")
        }
        return key
    }()
}
