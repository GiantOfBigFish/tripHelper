//
//  VMPlaces.swift
//  TripHelper
//
//  Created by Esteban Hernandez on 29/05/22.
//

import Foundation

class VMPlaces : ObservableObject {
    @Published var PlacesData = [PlaceElements] ()
    init () {
        let urlTripServer = URL (string: "https://my-json-server.typicode.com/GiantOfBigFish/tripHelper/db" )!
        var request = URLRequest(url: urlTripServer)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { (data, response, errMessage) in
            do {
                if let jsonData = data {
                    print ("tamaño json \(jsonData)")
                    let decodeData = try JSONDecoder().decode( [PlaceElements].self, from: jsonData )
                    print("JSONDecodificado: \(decodeData)")
                    DispatchQueue.main.async {
                        self.PlacesData.append(contentsOf: decodeData)
                        print(" result concat \(self.PlacesData)")
                    }
                } else {
                    print("No existen datos en el json recuperado")
                }
            } catch {
                print("Error 1 \(errMessage)")
            }
        }.resume()
        print ("finish")
        
        
    }
    
}
