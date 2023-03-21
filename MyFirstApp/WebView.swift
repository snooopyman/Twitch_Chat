//
//  WebView.swift
//  MyFirstApp
//
//  Created by Armando Cáceres on 16/3/23.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let webView: WKWebView

    func makeUIView(context: Context) -> WKWebView {
        webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let preferences = WKWebpagePreferences()
        preferences.allowsContentJavaScript = true
        let configuration = WKWebViewConfiguration()
        configuration.defaultWebpagePreferences = preferences
        uiView.configuration.allowsInlineMediaPlayback = true
        uiView.configuration.allowsAirPlayForMediaPlayback = true
        uiView.configuration.allowsPictureInPictureMediaPlayback = true
        //uiView.configuration.allowsContentAccess = true // this line is for allowing iframe access

    }
}
