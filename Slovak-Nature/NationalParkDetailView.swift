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
                
                VStack {
                    HStack(alignment: .center) {
                        
                        
                        VStack(alignment: .leading) {
                            Text("Lokalita")
                                .font(.callout)
                            Text(nationalPark.location)
                                .font(.headline)
                        }
                        
                        Spacer()
                        
                        HStack {
                            Divider()
                            Image("mountains-1")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                            
                            
                            Text(nationalPark.category)
                                .font(.callout)
                                .padding(.top, 4)
                                .foregroundColor(.gray)
                        }
                        
                        
                        
                    }
                    .padding(.horizontal)
                    .padding(.top)
                }
                
                
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
