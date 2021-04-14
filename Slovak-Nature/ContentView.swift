//
//  ContentView.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 02/04/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    
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
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 18){
                        ForEach(modelData.articles){ article in
                            FeaturedCard(article: article)
                        }
                    }.padding()
                }
                
                
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}

