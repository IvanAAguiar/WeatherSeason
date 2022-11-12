//
//  Bundle-Decodable.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 12/11/2022.
//

import Foundation

extension Bundle {
    func decode <T: Codable> (_ file: String) -> T {
        // Locate the JSON-file.
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        do {
            // Create a property for the data
            let data = try Data(contentsOf: url)
            // Create a decoder
            let decoder = JSONDecoder()
            // Return the decoded data
            return try decoder.decode(T.self, from: data)
        } catch let error {
            print(error.localizedDescription)
            fatalError("Failed to decode \(file) from bundle.")
        }
    }
}
