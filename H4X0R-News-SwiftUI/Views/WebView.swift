//
//  WebView.swift
//  H4X0R-News-SwiftUI
//
//  Created by Muhammad Shayyan on 30/10/2022.
//

import WebKit
import SwiftUI
import Foundation

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let urlString {
            if let url = URL(string: urlString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
