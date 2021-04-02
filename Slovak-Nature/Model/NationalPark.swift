//
//  NationalPark.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 02/04/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct NationalPark: Hashable, Codable, Identifiable  {
    
    var id: Int
    var name: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    var shortcut: String
    var location: String
    var category: String
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    struct Coordinates: Hashable, Codable {
       var latitude: Double
       var longitude: Double
    }
    
}

