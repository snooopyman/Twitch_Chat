//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Armando Cáceres on 16/3/23.
//
/*
import SwiftUI
import WebKit

struct ContentView: View {
    @State private var channelName = ""
    @State private var webView: WKWebView? = nil
    @State private var isLoading = false // <-- Nueva variable @State
    
    var body: some View {
        VStack {
            TextField("Ingrese el nombre del canal", text: $channelName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {
                isLoading = true // <-- Indicar que se está cargando
                let url = "https://www.twitch.tv/embed/\(channelName)/chat?parent=\(channelName).twitch.tv"
                DispatchQueue.global().async { // <-- Cargar en un hilo de fondo
                    if let data = try? Data(contentsOf: URL(string: url)!) {
                        DispatchQueue.main.async { // <-- Asignar en el hilo principal
                            let newWebView = WKWebView()
                            newWebView.load(data, mimeType: "text/html", characterEncodingName: "UTF-8", baseURL: URL(string: url)!)
                            webView = newWebView
                            isLoading = false // <-- Indicar que se ha terminado de cargar
                        }
                    }
                }
            }) {
                Text("Mostrar chat")
            }

            if isLoading { // <-- Mostrar indicador de carga
                ProgressView()
            } else if let webView = webView {
                WebView(webView: webView)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            } else {
                Text("Ingrese el nombre del canal y haga clic en el botón para mostrar el chat.")
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            }
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/
import SwiftUI
import WebKit
/*
struct ContentView: View {
    var body: some View {
        NavigationView {
            ChannelInputView()
                .navigationTitle("Chat de Twitch")
        }
    }
}*/
struct ContentView: View {
    var body: some View {
        NavigationView {
            ChannelInputView()
                .navigationTitle("Chat de Twitch")
        }
        /*
        ZStack {
            Color.white
            ChannelInputView()
        }*/
    }
}

