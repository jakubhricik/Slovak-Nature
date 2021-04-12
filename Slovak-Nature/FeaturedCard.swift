//
//  FeaturedCard.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 12/04/2021.
//

import SwiftUI

struct FeaturedCard: View {
    var body: some View {
        ZStack{
            Image("panorama-of-mountain")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            VStack{
                Spacer()
                HStack {
                    VStack(alignment: .leading) {
                        Text("National Parks")
                            .font(.title)
                            .bold()
                            .padding(.bottom, 2.0)
                        
                        
                        Text("There are 9 beautifull National Parks")
                            .font(.footnote)
                    }
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image("tundra")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(.trailing)
                }
                .frame(width: 316, height: 97)
                .background(Color("Color3Transparent"))
                .background(BlurView(style: .systemThinMaterialDark).opacity(0.2))
                .cornerRadius(10)
            }
            
            
        }
        .frame(width: 316, height: 214)
        .cornerRadius(10)
    }
}

struct FeaturedCard_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedCard()
    }
}
