//
//  NationalParkDetailView.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 02/04/2021.
//

import SwiftUI

struct NationalParkDetailView: View {
    @EnvironmentObject var modelData: ModelData
    var nationalPark: NationalPark
    
    var body: some View {
        ScrollView{
            VStack{
                MapDetailView(nationalPark: nationalPark)
                    .cornerRadius(18)
                    .shadow(radius: 20)
                
                AdditionalInfoView(nationalPark: nationalPark)
                    .shadow(radius: 40)
                
                
                Text(nationalPark.description)
                    .padding()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}



struct NationalParkDetailView_Previews: PreviewProvider {
    static var modelData = ModelData()
    
    static var previews: some View {
        NationalParkDetailView(nationalPark: ModelData().nationalParks[0])
            .environmentObject(modelData)
            
    }
}



