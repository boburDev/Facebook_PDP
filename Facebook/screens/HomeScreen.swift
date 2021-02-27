//
//  HomeScreen.swift
//  Facebook
//
//  Created by Boburmirzo on 2/24/21.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            Timeline()
                .navigationBarItems(
                    leading: Text("facebook")
                        .fontWeight(.bold)
                        .font(.system(size: 25))
                        .foregroundColor(.blue),
                    trailing: HStack{
                        ZStack{
                            Circle().fill(Color.gray.opacity(0.3))
                                .frame(width: 35, height: 35)
                            Image("ic_search")
                        }
                        ZStack{
                            Circle().fill(Color.gray.opacity(0.3))
                                .frame(width: 35, height: 35)
                            Image(systemName: "bolt.horizontal.icloud.fill")
                        }
                    })
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
