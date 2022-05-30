//
//  Places.swift
//  TripHelper
//
//  Created by Esteban Hernandez on 29/05/22.
//

import Foundation

struct PlaceElements: Codable, Hashable {
    var places: [ PlaceElement ] 
}
struct PlaceElement: Codable, Hashable {
    var id: String
    var title: String
    var description: String
    //var tags: [String]
    //var cost: [MoneyItem]
    //var accesibility: [String]
    //var dateAdd: Date
    //var photos: [String]
    //Svar location: String
    
}
struct MoneyItem: Codable, Hashable {
    var item: String
    var quantity: Double
    var aprox: Bool
    var badge: String
}
