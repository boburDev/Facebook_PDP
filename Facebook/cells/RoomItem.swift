//
//  RoomItem.swift
//  Facebook
//
//  Created by Boburmirzo on 2/25/21.
//

import SwiftUI

struct RoomItem: View {
    var isOnline = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image("image1")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35).stroke(lineWidth: 1))
            if isOnline {
                ZStack{
                    Circle().frame(width: 24, height: 24).foregroundColor(.white)
                    Circle().frame(width: 18, height: 18).foregroundColor(.green)
                }.offset(x: 2, y: 2)
            }
        }
    }
}

struct RoomItem_Previews: PreviewProvider {
    static var previews: some View {
        RoomItem()
    }
}
