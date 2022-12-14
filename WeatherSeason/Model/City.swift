//
//  City.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 12/11/2022.
//

import Foundation

struct City: Codable {
    let id: Int
    let name: String
    let coord: Coord
    let country: String
    let population, timezone, sunrise, sunset: Int
}
