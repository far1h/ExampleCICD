//
//  ContentView.swift
//  ExampleCICD
//
//  Created by Farih Muhammad on 16/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var printedText: String = "Hello"
    var body: some View {
        VStack (spacing: 10) {
            TextField("Type your name", text: $text)
            Button {
                printedText = printedText + " " + text
            } label: {
                Text("Say hello")
            }
            Text(printedText)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
