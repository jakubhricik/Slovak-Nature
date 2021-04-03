//
//  MapDetailView.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 03/04/2021.
//

import SwiftUI

struct MapDetailView: View {
    var nationalPark: NationalPark
    
    var body: some View {
        ZStack{
            MapView(coordinate: nationalPark.locationCoordinate)
            VStack{
                Spacer()
                HStack{
                    nationalPark.image
                        .resizable()
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: 18))
                        .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 4)
                        .offset(y: -13)
                    
                    Text(nationalPark.name)
                        .font(.title).bold()
                        .padding(.horizontal)
                }.padding(.bottom)
                .frame(width: UIScreen.main.bounds.width)
            }
            .cornerRadius(15)
        }.frame(height: UIScreen.main.bounds.height / 2)
    }
}

struct MapDetailView_Previews: PreviewProvider {
    static var nationalPark = ModelData().nationalParks[0]
    static var previews: some View {
        MapDetailView(nationalPark: nationalPark)
    }
}
