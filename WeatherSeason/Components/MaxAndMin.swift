//
//  MaxAndMin.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 13/11/2022.
//

import SwiftUI

struct MaxAndMin: View {
    let max: Double
    let min: Double
    
    var body: some View {
        Text("\(max.formatted())º/ \(min.formatted())º")
    }
}

struct MaxAndMin_Previews: PreviewProvider {
    static var previews: some View {
        MaxAndMin(max: 15.7, min: 15.2)
    }
}
