//
//  Weather.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 12/11/2022.
//

import Foundation

struct Weather: Codable, Identifiable {
    let id: Int
    let main, weatherDescription, icon: String

    enum CodingKeys: String, CodingKey {
        case id, main
        case weatherDescription = "description"
        case icon
    }
}
