//
//  TabButtons.swift
//  Facebook
//
//  Created by Boburmirzo on 2/27/21.
//

import SwiftUI

struct TabButtons: View {
    @State var screen = "timeline"
    var body: some View {
        VStack{
            HStack(spacing:0){
                Button(action: {
                    screen = "timeline"
                    
                }, label: {
                    Image(systemName: "homekit")
                        .resizable()
                        .frame(width: 40, height: 20)
                        .foregroundColor(.black)
                })
                .padding()
                
                
                
                Button(action: {
                    screen = "friends"
                
                }, label: {
                    Image("ic_followers")
                        .resizable()
                        .frame(width: 40, height: 30)
                })
                .padding(11)
                
                
                
                Button(action: {
                    screen = "groups"
                    
                }, label: {
                    Image("ic_search")
                        .resizable()
                        .frame(width: 40, height: 30)
                })
                .padding(11)
                
                
                
                Button(action: {
                    screen = "add_post"
                }, label: {
                    Image("ic_watch")
                        .resizable()
                        .frame(width: 40, height: 30)
                })
                .padding(11)
                
                
                
                Button(action: {
                        screen = "events"
                }, label: {
                    Image("ic_notification")
                        .resizable()
                        .frame(width: 40, height: 30)
                })
                .padding(11)
                
                
                
                Button(action: {
                    screen = "profile"
                    
                }, label: {
                    Image("ic_menu")
                        .resizable()
                        .frame(width: 40, height: 30)
                        .cornerRadius(35)
                })
                .padding(11)
                
                
            }
            .padding(.top, 10)
        }
    }
}

struct TabButtons_Previews: PreviewProvider {
    static var previews: some View {
        TabButtons()
    }
}
