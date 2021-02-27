//
//  StoryItem.swift
//  Facebook
//
//  Created by Boburmirzo on 2/27/21.
//

import SwiftUI

struct StoryItem: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            Image("image1")
                .resizable()
                .frame(width: 150, height: 250)
                .scaledToFit()
            VStack(alignment:.leading){
                Image("image1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(35)
                    .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.blue, lineWidth: 3))
                Spacer()
                Text("Boburmirzo Negmatov").fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
            }.padding()
        }.frame(width: 150, height: 250).cornerRadius(15)
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
