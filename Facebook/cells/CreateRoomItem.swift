//
//  CreateRoomItem.swift
//  Facebook
//
//  Created by Boburmirzo on 2/25/21.
//

import SwiftUI

struct CreateRoomItem: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image("ic_room").resizable().frame(width: 50, height: 50)
                Text("Create Room").font(.system(size: 20)).foregroundColor(.blue)
            })
        }
        .frame(width: 150)
        .padding(3)
        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.blue.opacity(0.5), lineWidth: 2))
        
    }
}

struct CreateRoomItem_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoomItem()
    }
}
