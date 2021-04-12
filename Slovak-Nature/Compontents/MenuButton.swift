//
//  MenuButton.swift
//  Slovak-Nature
//
//  Created by Jakub Hricik on 12/04/2021.
//

import SwiftUI

struct MenuButton: View {
    var body: some View {
        Image(systemName: "list.dash")
            .font(.title2)
            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color("Backgroun1"))
            .clipShape(Circle())
            .shadow(color: Color(.gray).opacity(0.3), radius: 20, x: 0, y: 5)
    }
}


struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton()
    }
}
