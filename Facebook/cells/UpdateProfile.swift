//
//  UpdateProfile.swift
//  Facebook
//
//  Created by Boburmirzo on 2/27/21.
//

import SwiftUI

struct UpdateProfile: View {
    var img_url = "image1"
    var username = "Omadbek Kosimov"
    
    var body: some View {
        VStack{
            // header
            HStack{
                Image(img_url).resizable().frame(width: 70, height: 70).cornerRadius(35)
                VStack{
                    HStack{
                        VStack{
                            Text(username)
                                .fontWeight(.bold)
                                .font(.title3) +
                                Text(" update his profile picture")
                                .font(.system(size: 20))
                        }
                        Spacer()
                        Image("ic_more")
                    }
                    HStack{
                        Text("1d")
                        Image(systemName: "globe")
                        Spacer()
                    }
                }
            }
            
            // profile photo
            VStack{
                ZStack{
                    Circle()
                        .foregroundColor(.white).overlay(RoundedRectangle(cornerRadius: UIScreen.width).stroke(Color.gray, lineWidth: 2))
                    Image(img_url)
                        .resizable()
                        .frame(width: UIScreen.width - UIScreen.width / 4, height: UIScreen.width  - UIScreen.width / 4)
                        .cornerRadius(UIScreen.width)
                }
                .frame(width: UIScreen.width - 80, height: UIScreen.width - 80)
            }
            
            // likes
            
            HStack{
                Image("ic_fc_like")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("9").font(.system(size: 22)).foregroundColor(.gray)
                Spacer()
            }

            HStack{}
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.5))
                .padding(.top, 5)
            
            // like, comment, share
            HStack{
                Spacer()
                HStack{
                    Image("ic_fc_liked").resizable().frame(width: 30, height: 30)
                    Text("Like")
                }
                Spacer()
                HStack{
                    Image("ic_fc_comment").resizable().frame(width: 30, height: 30)
                    Text("Comment")
                }
                Spacer()
                HStack{
                    Image("ic_fc_share").resizable().frame(width: 30, height: 30)
                    Text("Share")
                }
                Spacer()
            }.frame(height: 25).padding(.top,10)
        }.padding()
    }
}

struct UpdateProfile_Previews: PreviewProvider {
    static var previews: some View {
        UpdateProfile()
    }
}
