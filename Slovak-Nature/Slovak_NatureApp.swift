//
//  Slovak_NatureApp.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 02/04/2021.
//

import SwiftUI

@main
struct Slovak_NatureApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
