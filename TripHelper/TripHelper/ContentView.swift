//
//  ContentView.swift
//  TripHelper
//
//  Created by Esteban Hernandez on 29/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (){
            
            Text("Hello, world!")
                .padding()
            PlaceCard ()
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

