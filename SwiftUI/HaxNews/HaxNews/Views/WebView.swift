//
//  WebView.swift
//  HaxNews
//
//  Created by Gary Chen on 10/15/20.
//

import Foundation
import WebKit
import SwiftUI

//UIViewRepresentable creates SwiftUIView that represents UIKitView (?)
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
