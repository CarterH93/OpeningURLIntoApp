//
//  OpeningURLIntoAppApp.swift
//  OpeningURLIntoApp
//
//  Created by Carter Hawkins on 12/10/22.
//


//   TO TEST OUT !!!!
//  In web browser open this link
//   cartersapp.com://?secondView=true&inputText=ThisIsATestMessage


import SwiftUI

@main
struct OpeningURLIntoAppApp: App {
    @State var urlStreaming : Int = 0
    @State var inputText = "error on input"
    var body: some Scene {
        WindowGroup {
            Group {
                if urlStreaming == 0 {
                    ContentView()
                } else {
                    SecondaryView(inputText)
                }
            }
            .onOpenURL { url in
                print(url.absoluteString)
                if (url.valueOf("secondView") == "true") {
                    urlStreaming = 1
                } else {
                    urlStreaming = 0
                }
                inputText = url.valueOf("inputText") ?? "No input text"
            }
        }
    }
}

extension URL {
    func valueOf(_ queryParameterName: String) -> String? {
        guard let url = URLComponents(string: self.absoluteString) else { return nil }
        return url.queryItems?.first(where: { $0.name == queryParameterName })?.value
    }
}
