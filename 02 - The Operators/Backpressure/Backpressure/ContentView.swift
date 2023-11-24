//
//  ContentView.swift
//  Backpressure
//
//  Created by Vincent on 03/08/2023.
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
    }
}

#Preview {
    ContentView()
        .onAppear {
            run()
        }
}
