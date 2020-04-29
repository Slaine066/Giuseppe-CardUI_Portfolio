//
//  ResumeView.swift
//  GiuseppeCard
//
//  Created by Giuseppe Gioi on 27/04/2020.
//  Copyright © 2020 Giuseppe Gioi. All rights reserved.
//

import SwiftUI

struct ResumeView: View {
    
    @State var showView = false
    
    let sfSymbol: String
    let text: String
    
    let fileUrl = Bundle.main.url(forResource: "Resume", withExtension: "pdf")!
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50.0)
            .overlay(
                HStack {
                    Image(systemName: sfSymbol)
                        .foregroundColor(.init(red: 0.20, green: 0.33, blue: 0.55, opacity: 1.00))
                    Button(action: {
                        self.showView.toggle()
                    }) {
                    Text(text)
                        .foregroundColor(.black)
                    }.sheet(isPresented: $showView) {
                        PDFKitView(url: self.fileUrl)
                    }
            })
    }
}

struct ResumeView_Previews: PreviewProvider {
    static var previews: some View {
        ResumeView(sfSymbol: "link", text: "Resume")
        .previewLayout(.sizeThatFits)
    }
}
