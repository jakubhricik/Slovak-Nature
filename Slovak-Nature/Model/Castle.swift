//
//  Castle.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 14/04/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Castle: Hashable, Codable, Identifiable{
    var id: Int
    var title: String
    var subtitle: String
    var category: String
    
    private var titleImageName: String
    var titleImage: Image {
        Image(titleImageName)
    }
    
    var introText: String
    
}
