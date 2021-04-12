//
//  ContentView.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 02/04/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("BackgrounMain")
                .ignoresSafeArea()
            
            VStack{
                HStack {
                    Text("Featured")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding()
                    
                    Spacer()
                    
                    MenuButton()
                        .padding(.trailing, 25)
                }
                .padding(.top)
                
                
                
                FeaturedCard()
                
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

