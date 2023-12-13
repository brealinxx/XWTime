//
//  ContentView.swift
//  XWTime
//
//  Created by brealin on 2023/12/12.
//

import SwiftUI

struct ContentView: View {
    @State private var tweetText: String = ""
    let tweetServer = XServer.shared

    var body: some View {
        VStack {
            TextField("What's happening?", text: $tweetText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: {
                tweetServer.GenerateTweet(for: tweetText) { success in
                    if success {
                        print("Success!")
                    } else {
                        print("Failure!")
                    }
                }
            }) {
                Text("发送")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
