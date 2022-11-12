//
//  Rain.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 12/11/2022.
//

import Foundation

struct Rain: Codable {
    let the3H: Double

    enum CodingKeys: String, CodingKey {
        case the3H = "3h"
    }
}
