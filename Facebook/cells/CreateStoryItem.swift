//
//  CreateStoryItem.swift
//  Facebook
//
//  Created by Boburmirzo on 2/27/21.
//

import SwiftUI

struct CreateStoryItem: View {
    var img_url = "image1"
    var body: some View {
        VStack{
            Button(action: {}, label: {
                VStack{
                    Image(img_url).resizable().frame(width: 150, height: 150)
                    Spacer()
                    VStack{
                        ZStack(alignment: .top){
                            ZStack{
                                Circle()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.blue)
                                    .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
                                Image("ic_add").resizable().frame(width: 50, height: 50)
                            }.offset(y: -55)
                            
                            Text("Create a Story")
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                        }
                    }.padding(.bottom, 7)
                }
            })
        }.frame(width: 150, height: 250).background(Color.gray.opacity(0.2)).cornerRadius(15)
    }
}

struct CreateStoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CreateStoryItem()
    }
}
