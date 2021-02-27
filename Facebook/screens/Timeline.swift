//
//  Timeline.swift
//  Facebook
//
//  Created by Boburmirzo on 2/25/21.
//

import SwiftUI
extension UIScreen {
    static var width = UIScreen.main.bounds.width
}
struct Timeline: View {
    var body: some View {
        VStack{
            ScrollView{
                
            // what on you mind
            HStack{
                Image("image1")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(35)
                    .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.gray.opacity(0.4), lineWidth: 3))
                Button(action: {
                    
                }, label: {
                    Text("What's on your mind?")
                        .padding()
                        .padding(5)
                        .frame(height: 45)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.black)
                        .cornerRadius(25)
                    Spacer()
                })
                .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.gray.opacity(0.4), lineWidth: 2)
                    )
                
            }.padding(20)
                
            HStack{}.frame(height:1).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
            
                
            // live, photos, room
            HStack(alignment: .center, spacing:0){
                Image("ic_live").frame(width: UIScreen.width / 3).frame(height:45)
                Divider().frame(height: UIScreen.width / 15)
                Image("ic_photo").frame(width: UIScreen.width / 3).frame(height:45)
                Divider().frame(height:UIScreen.width / 15)
                Image("ic_room").frame(width: UIScreen.width / 3).frame(height:45)
            }.frame(height:45)
            
                
            HStack{}.frame(height:10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5))    
            // create room
            VStack{
                
                HStack{
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing:20){
                            CreateRoomItem()
                            RoomItem(isOnline: false)
                            RoomItem(isOnline: true)
                            RoomItem(isOnline: false)
                            RoomItem(isOnline: true)
                            RoomItem(isOnline: false)
                            RoomItem(isOnline: true)
                        }
                    }
                }
                .frame(height:80)
                .frame(maxWidth: .infinity)
            }.padding(.leading, 10)
            
                
            // create story
            VStack{
                HStack{}.frame(height:10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5))
                HStack{
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            CreateStoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                        }.padding(10)
                    }
                }
            }
                
            HStack{}.frame(height:10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
            
                
            // post items, update profile
            VStack{
                PostItem(username: "Zokir Hamdamov", img_url: "image1")
                UpdateProfile(img_url: "image1", username: "Boburmirzo Negmatov")
                DoublePost(img_url: "image1", img_url1: "image1", img_url2: "image1", username: "Rustam Axmedov")
                }
            }
        }
    }
}

struct Timeline_Previews: PreviewProvider {
    static var previews: some View {
        Timeline()
    }
}
