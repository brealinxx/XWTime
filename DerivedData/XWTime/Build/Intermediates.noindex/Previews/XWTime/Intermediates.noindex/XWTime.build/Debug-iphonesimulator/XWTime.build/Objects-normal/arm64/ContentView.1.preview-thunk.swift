@_private(sourceFile: "ContentView.swift") import XWTime
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/brealin/DEV/XWTime/XWTime/ContentView.swift", line: 42)
        ContentView()
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/brealin/DEV/XWTime/XWTime/ContentView.swift", line: 15)
        VStack {
            TextField(__designTimeString("#5710.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "What's happening?"), text: $tweetText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: {
                tweetServer.GenerateTweet(for: tweetText) { success in
                    if success {
                        print(__designTimeString("#5710.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value", fallback: "Success!"))
                    } else {
                        print(__designTimeString("#5710.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].[1].[0].arg[0].value", fallback: "Failure!"))
                    }
                }
            }) {
                Text(__designTimeString("#5710.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "发送"))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#5710.[1].[2].property.[0].[0].arg[0].value.[1].modifier[3].arg[0].value.arg[0].value", fallback: 10)))
        }
        .padding()
    
#sourceLocation()
    }
}

import struct XWTime.ContentView
import struct XWTime.ContentView_Previews

