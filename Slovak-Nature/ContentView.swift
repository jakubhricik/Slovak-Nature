//
//  ContentView.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 02/04/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(ModelData().nationalParks[0].name)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
