//
//  FeaturedCard.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 12/04/2021.
//

import SwiftUI

struct FeaturedCard: View {
    
    var article: Article
    
    var body: some View {
        ZStack{
            article.titleImage
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            VStack{
                Spacer()
                HStack {
                    VStack(alignment: .leading) {
                        Text(article.title)
                            .font(.title3)
                            .fontWeight(.heavy)
                            .padding(.bottom, 2.0)
                        
                        
                        Text(article.subtitle)
                            .font(.footnote)
                    }
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(article.category)
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
    static var articles = ModelData().articles
    static var previews: some View {
        FeaturedCard(article: articles[0])
    }
}
