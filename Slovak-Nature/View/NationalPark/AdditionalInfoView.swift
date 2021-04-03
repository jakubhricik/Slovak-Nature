//
//  AdditionalInfoView.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 03/04/2021.
//

import SwiftUI

struct AdditionalInfoView: View {
    var nationalPark: NationalPark
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                
                
                VStack(alignment: .leading) {
                    Text("Lokalita")
                        .font(.callout)
                        .foregroundColor(.gray)
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
    }
}

struct AdditionalInfoView_Previews: PreviewProvider {
    static var nationalPark = ModelData().nationalParks[0]
    static var previews: some View {
        AdditionalInfoView(nationalPark: nationalPark)
    }
}
