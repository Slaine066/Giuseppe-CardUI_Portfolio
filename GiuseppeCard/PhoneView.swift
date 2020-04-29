//
//  InfoView.swift
//  GiuseppeCard
//
//  Created by Giuseppe Gioi on 19/03/2020.
//  Copyright © 2020 Giuseppe Gioi. All rights reserved.
//

import SwiftUI

struct PhoneView: View {
    
    let sfSymbol: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50.0)
            .overlay(
                HStack {
                    Image(systemName: sfSymbol)
                        .foregroundColor(.init(red: 0.20, green: 0.33, blue: 0.55, opacity: 1.00))
                    Button(action: {
                        let tel = "tel://"
                        let formattedString = tel + self.text
                        let url: NSURL = URL(string: formattedString)! as NSURL
                        UIApplication.shared.open(url as URL)
                    }) {
                    Text(text)
                        .foregroundColor(.black)
                    }
            })
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneView(sfSymbol: "phone.fill", text: "Phone Number")
            .previewLayout(.sizeThatFits)
    }
}
