//
//  ContentView.swift
//  Assignment6
//  Created by Pedro Orellana
//  9/22/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
          Image("background")
            
            VStack {
                HStack {
                    Image("swift_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Image("swift_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Image("swift_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                HStack {
                    Image("swift_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Image("swift_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Image("swift_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                HStack {
                    Image("swift_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Image("swift_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Image("swift_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
            }
          
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
