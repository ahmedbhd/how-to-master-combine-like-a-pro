//
//  ContentView.swift
//  BasicsOfCombine
//
//  Created by Vincent on 27/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            run()
        }
    }
}

#Preview{
    ContentView()
}
