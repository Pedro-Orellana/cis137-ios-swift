//
//  FoodScreen.swift
//  Assignment 8
//
//  Custom view for displaying food menu items to the user

//  Created by Pedro Orellana
//  10/12/26.
//

import SwiftUI

struct FoodScreen: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        
        List {
            ForEach(menu) { section in
                Section(section.name) {
                    ForEach(section.items) { item in
                        Text(item.name)
                    }
                }
            }
        }
        .navigationTitle("Our food selection:")
    }
}

#Preview {
    FoodScreen()
}
