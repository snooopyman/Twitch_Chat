//
//  ChannelInputView.swift
//  MyFirstApp
//
//  Created by Armando Cáceres on 17/3/23.
//
import SwiftUI
import WebKit

struct ChannelInputView: View {
    @State private var channelName = ""
    @State private var showChat = false

    var body: some View {
        VStack {
            TextField("Escribe tu canal", text: $channelName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {
                showChat = true
            }) {
                Text("Mostrar chat")
            }
        }
        .padding()
        .fullScreenCover(isPresented: $showChat, onDismiss: {
            channelName = ""
        }, content: {
            ChatView(channelName: channelName)
        })
    }
}
