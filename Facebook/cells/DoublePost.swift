//
//  DoublePost.swift
//  Facebook
//
//  Created by Boburmirzo on 2/28/21.
//

import SwiftUI

struct DoublePost: View {
    
    var img_url = "image1"
    var img_url1 = "image1"
    var img_url2 = "image1"
    var username = "Omadbek Kosimov"
    var body: some View {
        VStack{
            // header
            HStack{
                Image(img_url).resizable().frame(width: 70, height: 70).cornerRadius(35)
                VStack{
                    HStack{
                        HStack{
                            Text(username)
                                .fontWeight(.bold)
                                .font(.title3)
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
            }.padding(.leading, 10).padding(.trailing, 10)
            
            HStack{
                VStack(alignment: .leading){
                    Text("🟢// Android bo’yicha bepul ochiq darsga marhamat \n")
                    Text("Unda oxiriq...") + Text("See More").font(.system(size: 22)).foregroundColor(.gray)
                }.frame(height: 100).padding(.leading, 20)
                Spacer()
            }
            // profile photo
                HStack(spacing: 5){
                    Image(img_url1)
                        .resizable()
                        .frame(width: UIScreen.width / 2, height: UIScreen.width / 1.5)
                    
                    Image(img_url2)
                        .resizable()
                        .frame(width: UIScreen.width / 2, height: UIScreen.width / 1.5)
                }
            
            // likes
            
            HStack{
                Image("ic_fc_like")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("9").font(.system(size: 22)).foregroundColor(.gray)
                Spacer()
                Text("1 Share").font(.system(size: 22)).foregroundColor(.gray)
            }.padding(.leading, 10).padding(.trailing, 10)

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
        }
    }
}

struct DoublePost_Previews: PreviewProvider {
    static var previews: some View {
        DoublePost()
    }
}
