//
//  ContentView.swift
//  Assignment 8
//
//  added a NavigationLink to the food section of the main menu.
//  when users click on it, they are sent to a screen where a food menu is displayed
//  and food items are divided by sections
//
//  Created by Pedro Orellana
//  10/12/26.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Image(systemName: "car.fill")
                    Text("Cars")
                }
                
                HStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
                HStack {
                    Image(systemName: "figure.run")
                    Text("Fitness")
                }
                
                NavigationLink(destination: FoodScreen()) {
                    HStack {
                        Image(systemName: "fork.knife")
                        Text("Food")
                    }
                }
                
                
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

#Preview {
    ContentView()
}
