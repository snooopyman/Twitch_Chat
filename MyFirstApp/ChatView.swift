//
//  ChatView.swift
//  MyFirstApp
//
//  Created by Armando Cáceres on 17/3/23.
//
import SwiftUI
import WebKit

struct ChatView: View {
    let channelName: String
    let webView = WKWebView()
    
    func loadWebView() {
        let urlString = "https://www.twitch.tv/embed/\(channelName)/chat?parent=\(channelName).twitch.tv"
        if let url = URL(string: urlString) {
            webView.load(URLRequest(url: url))
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                WebView(webView: webView)
                    .onAppear(perform: loadWebView)
                    .navigationBarHidden(true)
                NavigationTitleView(title: channelName)
            }
        }
    }
}

struct NavigationTitleView: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .padding()
            Spacer()
        }
        .background(Color.white)
        .frame(height: 44)
        .navigationBarHidden(true)
    }
}
