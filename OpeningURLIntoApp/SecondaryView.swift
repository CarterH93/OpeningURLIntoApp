//
//  SecondaryView.swift
//  OpeningURLIntoApp
//
//  Created by Carter Hawkins on 12/10/22.
//


//   TO TEST OUT !!!!
//  In web browser open this link
//   cartersapp.com://?secondView=true&inputText=ThisIsATestMessage


import SwiftUI

struct SecondaryView: View {
    @State private var text = "Error"
    var body: some View {
        Text(text)
    }
    init(_ inputText: String) {
        _text = State(initialValue: inputText)
    }
}

struct SecondaryView_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryView("Preview")
    }
}
