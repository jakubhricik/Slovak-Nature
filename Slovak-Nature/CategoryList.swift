//
//  CategoryList.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 15/04/2021.
//

import SwiftUI

struct CategoryList: View {
    var category : String
    var modelData : ModelData
    
    var body: some View {
        NavigationView{
            List(modelData.castles){item in
                NavigationLink(destination: Text("1")) {
                    HStack {
                        item.titleImage
                            .resizable()
                            .frame(width: 97, height: 76, alignment: .center)
                            .scaledToFill()
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.25), radius: 10, x: 2, y: 4)
                        
                        
                        
                        VStack(alignment: .leading) {
                            if item.isTypForTrip {
                                Text("Typ for Trip")
                                    .font(.caption)
                                    .foregroundColor(Color.gray)
                                    .padding(.bottom, -4.0)
                            }else if item.isTypWithKids{
                                Text("Typ for Trip")
                                    .font(.caption)
                                    .foregroundColor(Color.gray)
                                    .padding(.bottom, -4.0)
                            }
                            
                            Text(item.title)
                                .font(.title3)
                                .fontWeight(.medium)
                            
                            Text(item.subtitle)
                                .font(.subheadline)
                                .foregroundColor(Color("Color3"))
                                .padding(.top, -4.0)
                        }
                    }
                    
                }
            }
            .navigationBarHidden(true)
            
        }
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var modelData = ModelData()
    
    static var previews: some View {
        CategoryList(category: "Castle", modelData: modelData)
    }
}
