//
//  About page.swift
//  moreconnectedthanyouthink
//
//  Created by Brycen Bissell on 6/7/21.
//

import SwiftUI

extension Color {
    static let Peach = Color(red: 255 / 255, green: 203 / 255, blue: 164 / 255)
    static let Icebreaker = Color(red: 172 / 255, green: 237 / 255, blue: 255 / 255)
}

struct About_page: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("mainfinal")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Created by: Brycen Bissell")
                    .foregroundColor(.green)
                    .font(.custom("Futura", size: 17))
                Link("brycenbissell.com",
                      destination: URL(string: "https://www.brycenbissell.com/")!)
                    .foregroundColor(.blue)
                    .font(.custom("Futura", size: 17))
                Text("Artwork by Ramin Aliyev")
                    .foregroundColor(.green)
                    .font(.custom("Futura", size: 17))
                Link("Instagram",
                      destination: URL(string: "https://www.instagram.com/noodles666doodles/")!)
                    .foregroundColor(.blue)
                    .font(.custom("Futura", size: 17))
            }.frame(width: 300, height: 750, alignment: .topTrailing)
            .offset(x: 10)
                ScrollView {
                Text("3 out of 5 americans experience some sort of loneliness and this number is growing everyday. According to the CDC being lonely can have serious health affects such as dementia, suicide, heart disease, and even a higher chance of experiencing a stroke. This app serves as a tool to either strengthen the connections you have with other people or form new connections with other people. Please use the questions that you takeaway from this app to use on your own time and feel free to add your own questions as well. The goal of this app is to serve as a foundation for your future interactions with other people. If you are a part of the small percentage of people that are not lonely then please use this app to reach out to those who may be feeling that way. If you are someone that feels lonely then I encourage you to use this app to put yourself out there and develop new connections with new people. Know that you are not alone and there is many people out there that are feeling the same way as you. Feel free to write me new questions, app ideas, experiences with this app, and how loneliness has affected you at brycen619@gmail.com and you can learn more about me at brycenbissell.com")
                    .foregroundColor(Color.green)
                    .padding(5)
                    .font(.custom("Futura", size: 17))
                    .background(Color.black)
            }.frame(width: 325, height: 300, alignment: .center)
                .offset(y: -250)
                .padding(10)
        }
    }
}

struct About_page_Previews: PreviewProvider {
    static var previews: some View {
        About_page()
    }
}
