//
//  Start screen.swift
//  moreconnectedthanyouthink
//
//  Created by Brycen Bissell on 6/7/21.
//

import SwiftUI

struct Start_screen: View {
    var body: some View {
        NavigationView {
        ZStack(alignment: .center) {
            Image("mainfinal")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Icebreaker")
                    .foregroundColor(.Icebreaker)
                    .font(.custom("Futura", size: 30))
            }.frame(width: 300, height: 300, alignment: .top)
            .padding(-100)
            HStack(alignment: .center, spacing: 50) {
                NavigationLink(destination: About_page()) {
                    Text("About")
                        .frame(minWidth: 0, maxWidth: 100, minHeight: 0, maxHeight: 25)
                        .padding(5.0)
                        .background(Color.black)
                        .foregroundColor(.Icebreaker)
                        .cornerRadius(10)
                    }
                NavigationLink(destination: ContentView()) {
                    Text("Start")
                        .frame(minWidth: 0, maxWidth: 100, minHeight: 0, maxHeight: 25)
                        .padding(5.0)
                        .background(Color.black)
                        .foregroundColor(.Icebreaker)
                        .cornerRadius(10)
                }
            }.padding(-10)
            }
        }
    }
}

struct Start_screen_Previews: PreviewProvider {
    static var previews: some View {
        Start_screen()
    }
}
