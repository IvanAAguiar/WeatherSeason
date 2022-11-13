//
//  ContentView.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 11/11/2022.
//

import SwiftUI

struct ContentView: View {
    let exemple: Forecast = Bundle.main.decode("forecast.json")
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.blue.opacity(0.75), .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                ScrollView {
                    CurrentDayBannerView(list: exemple.list)
                        .padding(5)
                        .shadow(color: .black, radius: 4, x: 0, y: 2)
                }
                
            }
            .toolbar {
                ToolbarItem (placement: .navigationBarTrailing) {
                    NavigationLink {
                        SearchCityView()
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                    }
                }
                ToolbarItem (placement: .navigationBarLeading) {
                    NavigationLink {
                        LocationManagerView()
                    } label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }
                }
            }
            .navigationTitle(exemple.city.name + " - " + exemple.city.country)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
