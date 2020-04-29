//
//  ContentView.swift
//  GiuseppeCard
//
//  Created by Giuseppe Gioi on 19/03/2020.
//  Copyright © 2020 Giuseppe Gioi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let phoneNumber: String = "010-2863-9490"
    let mail: String = "giuseppe.gioi.1997@gmail.com"
    let gitHub: String = "github.com/Slaine066"
    let resume: String = "Giuseppe's Resume"
    
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.33, blue: 0.55, opacity: 1.00) // PANTONE 2020 Classic Blue - #34558B
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack{
                    Spacer()
                    Spacer()
                    Image("Giuseppe")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .position(x: 75, y: 90)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 5)
                    )
                    Text("Giuseppe Gioi")
                        .font(Font.custom("Pacifico", size: 40))
                        .bold()
                        .foregroundColor(.white)
                    Text("iOS Developer")
                        .font(Font.custom("Merienda", size: 20))
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                    Spacer()
                }
                
                Divider()
                    .background(Color.white)
                
                VStack{
                    Spacer()
                    ResumeView(sfSymbol: "link", text: resume)
                        .padding(10)
                    GitHubView(sfSymbol: "folder.fill", text: gitHub)
                        .padding(10)
                    PhoneView(sfSymbol: "phone.fill", text: phoneNumber)
                        .padding(10)
                    MailView(sfSymbol: "envelope.fill", text: mail)
                        .padding(10)
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


