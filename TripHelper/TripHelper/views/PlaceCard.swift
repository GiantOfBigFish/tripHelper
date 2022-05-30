//
//  PlaceCard.swift
//  TripHelper
//
//  Created by Esteban Hernandez on 29/05/22.
//

import SwiftUI

struct PlaceCard: View {
    
    @ObservedObject var allPlaces = VMPlaces()
    @State var currenPlace: PlaceElement
    let gridForm = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    init () {
        self.currenPlace = PlaceElement (
            id: "",
            title: "",
            description: "")
        
        
        
        
    }
    
    var body: some View {
        VStack {
            Text("loool")
            
            
        }
    }
}

struct PlaceCard_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCard()
    }
}
