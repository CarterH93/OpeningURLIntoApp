//
//  ContentView.swift
//  OpeningURLIntoApp
//
//  Created by Carter Hawkins on 12/10/22.
//


//   TO TEST OUT !!!!
//  In web browser open this link
//   cartersapp.com://?secondView=true&inputText=ThisIsATestMessage

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Content View")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
