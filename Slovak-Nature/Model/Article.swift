//
//  Article.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 13/04/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Article: Hashable, Codable, Identifiable{
    var id: Int
    var title: String
    var subtitle: String
    var category: String
    
    private var titleImageName: String
    var titleImage: Image {
        Image(titleImageName)
    }
    
    var introText: String
    
    var articleText: String
    
    private var subImageName: String
    var subImage: Image {
        Image(subImageName)
    }
}
