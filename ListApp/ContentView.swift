//
//  ContentView.swift
//  ListApp
//
//  Created by joomin on 3/25/24.
//

import SwiftUI

struct Country: Identifiable {
  var id = UUID()
  var name: String
}

struct CountryRow: View {
  var country: Country
  
  var body: some View {
      Text("\(country.name)")
  }
}

struct ContentView: View {
    let first = Country(name: "Korea")
    let second = Country(name: "Moon")
    let third = Country(name: "Jigu")
    
    var body: some View {
        let countries = [first, second, third]
        
        return VStack {
             List(countries) { country in
                  CountryRow(country:country)
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
