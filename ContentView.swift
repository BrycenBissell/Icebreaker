//
//  ContentView.swift
//  moreconnectedthanyouthink
//
//  Created by Brycen Bissell on 5/27/21.
//

import SwiftUI

let empty = ""
let qOne = "What is your favorite childhood memory?"
let qTwo = "When was the last time you had an arugment with your parents and what was it about?"
let qThree = "What was the last single item that you spent more than $100 on?"
let qFour = "Do you want kids? Why or why not?"
let qFive = "If you had to donate one million dollars to any charity what charity would it be and why?"
let qSix = "What life experience have you had that changed your way of thinking?"
let qSeven = "What is your guilty pleasure?"
let qEight = "What is something that you have not sincerely apologized for?"
let qNine = "What is something that you wish you could change with your family dynamic?"
let qTen = "If you had the opportunity to spread one message to the world what would it be?"
let qEleven = "What is time?"
let qTwelve = "What is consciousness?"
let qThirteen = "What is courage?"
let qFourteen = "What do we do about wealth inequality?"
let qFifteen = "If you had to really get to know someone by asking them one question what would it be?"
let qSixteen = "What is the first thing you do when you get off work?"
let qSeventeen = "Who is the most famous person you have ever met face to face?"
let qEighteen = "What is your unpopular food opinion?"
let qNineteen = "If you could bring anyone back from the dead who would it be and why?"
let qTwenty = "When were you the most surprised in your life?"
let qTwentyone = "What is something that you would like to experience?"
let qTwentytwo = "When was the last time you cried?"
let qTwentythree = "When has someone betrayed your trust?"
let qTwentyfour = "What is your definition of love?"
let qTwentyfive = "what makes you enjoy your favorite hobby?"
let qTwentysix = "What are you most grateful for in your life?"
let qTwentyseven = "What is something people do not normally know about you?"
let qTwentyeight = "What are you passionate about?"
let qTwentynine = "What are you doing today that is making a better you tomorrow?"
let qThirty = "What is one habit you wish to break?"

var questions = [qOne, qTwo, qThree, qFour, qFive, qSix, qSeven, qEight, qNine, qTen, qEleven, qTwelve, qThirteen, qFourteen, qFifteen, qSixteen, qSeventeen, qEighteen, qNineteen, qTwenty, qTwentyone, qTwentytwo, qTwentythree, qTwentyfour, qTwentyfive, qTwentysix, qTwentyseven, qTwentyeight, qTwentynine, qThirty]

var i = -1

struct ContentView: View {
    @State var uOne: String = ""
    @State var uTwo: String = ""
    var body: some View {
        ZStack(alignment: .center) {
            Image("icon9")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 450) {
                Text(uTwo)
                    .font(.custom("Futura", size: 30))
                    .foregroundColor(.Icebreaker)
                    .rotationEffect(.degrees(180))
                    .padding(10)
                Text(uOne)
                    .font(.custom("Futura", size: 30))
                    .foregroundColor(.Icebreaker)
                    .padding(10)
            }.frame(width: 350, height: 800, alignment: .center)
            .padding(1)
            HStack(alignment: .center, spacing: 30, content: {
                Button(action: {
                    i -= 1
                    if i == -2 {
                        i += 2
                    } else if (i == -1) {
                        i += 1
                    }
                    if i % 2 == 0 {
                        uOne = questions[i]
                        uTwo = empty
                    } else {
                        uOne = empty
                        uTwo = questions[i]
                    }
                }) {
                    Text("Previous")
                        .padding(5.0)
                        .background(Color.black)
                        .foregroundColor(.Icebreaker)
                        .cornerRadius(10)
                }
                Button(action: {
                    questions.shuffle()
                    if i == -2 {
                        i += 2
                    } else if (i == -1) {
                        i += 1
                    }
                    if i % 2 == 0 {
                        uOne = questions[i]
                        uTwo = empty
                    } else {
                        uOne = empty
                        uTwo = questions[i]
                    }
                }) {
                    Text("Shuffle")
                        .padding(5.0)
                        .background(Color.black)
                        .foregroundColor(.Icebreaker)
                        .cornerRadius(10)
                }
                Button(action: {
                    i += 1
                    if i >= 30 {
                        i -= 1
                    }
                    if i % 2 == 0 {
                        uOne = questions[i]
                        uTwo = empty
                    } else {
                        uOne = empty
                        uTwo = questions[i]
                    }
                }) {
                    Text("Next")
                        .padding(5.0)
                        .background(Color.black)
                        .foregroundColor(.Icebreaker)
                        .cornerRadius(10)
                }
            }).frame(width: 250, height: 50, alignment: .center).padding(.all, 10)
        }.aspectRatio(contentMode: .fill)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
