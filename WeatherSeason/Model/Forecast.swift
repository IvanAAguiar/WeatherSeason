//
//  Weather.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 11/11/2022.
//

import Foundation

struct Forecast: Codable {
    let cod: String
    let message, cnt: Int
    let list: [List]
    let city: City
}
