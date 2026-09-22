//
//  ContentView.swift
//  Homework5
//  Created by Pedro Orellana
//  9/19/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, my name is Pedro Orellana")
                .font(.largeTitle)
                .fontWeight(.bold)
                .italic()
            
            Image("profile")
                .resizable()
                .scaledToFit()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
