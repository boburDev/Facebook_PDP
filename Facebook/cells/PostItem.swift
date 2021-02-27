//
//  PostItem.swift
//  Facebook
//
//  Created by Boburmirzo on 2/27/21.
//

import SwiftUI

struct PostItem: View {
    var username = "Boburmirzo"
    var img_url = "python"
    var body: some View {
        VStack{
            // header
            HStack{
                ZStack(alignment: .bottomTrailing){
                    Image("image1")
                        .resizable().frame(width: 70, height: 70)
                        .cornerRadius(35)
                    ZStack{
                        Circle().frame(width: 28, height: 28).foregroundColor(.white)
                        Circle().frame(width: 23, height: 23).foregroundColor(.green)
                    }
                }
                VStack(alignment: .leading){
                    Text(username)
                        .fontWeight(.bold)
                        .font(.system(size: 18))
                    HStack{
                        Text("18m")
                        Image(systemName: "globe")
                    }
                }.padding(.leading, 2)
                Spacer()
                Image("ic_more")
            }.padding(.leading, 10).padding(.trailing, 10).padding(.top, 10)
            
            // image
            Image(img_url).resizable().frame(height: 450)
            
            // like comment share and others
            HStack(spacing: 5){
                HStack(spacing: -10){
                    Image("ic_fc_like").resizable().frame(width: 30, height: 30)
                    Image("ic_fc_love").resizable().frame(width: 30, height: 30)
                }
                Text("8.4K")
                Spacer()
                Text("240 Comments")
                Text("54 Shares")
            }.padding(.leading, 10).padding(.trailing, 10).padding(.top, 10)
            
            HStack{}.frame(height:0.5).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3)).padding(.top, 5)
            
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
            
            HStack{}.frame(height:10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5)).padding(.top, 5)
            
        }
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
