//
//  WebView.swift
//  GiuseppeCard
//
//  Created by Giuseppe Gioi on 28/04/2020.
//  Copyright © 2020 Giuseppe Gioi. All rights reserved.
//

import SwiftUI
import PDFKit // Need this to use PDFKit with SwiftUI

struct PDFKitView: View {

    var url: URL

    var body: some View {
        PDFKitRepresentedView(url)
    }
}

struct PDFKitRepresentedView: UIViewRepresentable { // A SwiftUI View which represents a UIKit View

    let url: URL

    init(_ url: URL) {
        self.url = url
    }

    // Needs these two Protocol Methods to works
    func makeUIView(context: UIViewRepresentableContext<PDFKitRepresentedView>) -> PDFKitRepresentedView.UIViewType {
        let pdfView = PDFView()
        pdfView.document = PDFDocument(url: self.url)
        pdfView.autoScales = true
        return pdfView
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PDFKitRepresentedView>) {
        // Update the view.
    }
}

