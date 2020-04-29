//
//  GitHubView.swift
//  GiuseppeCard
//
//  Created by Giuseppe Gioi on 27/04/2020.
//  Copyright © 2020 Giuseppe Gioi. All rights reserved.
//

import SwiftUI

struct GitHubView: View {
    
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
                        let http = "https://"
                        let formattedString = http + self.text
                        let url: NSURL = URL(string: formattedString)! as NSURL
                        UIApplication.shared.open(url as URL)
                    }) {
                    Text(text)
                        .foregroundColor(.black)
                    }
            })
    }
}

struct GitHubView_Previews: PreviewProvider {
    static var previews: some View {
        GitHubView(sfSymbol: "folder.fill", text: "GitHub")
        .previewLayout(.sizeThatFits)
    }
}
