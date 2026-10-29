//
//  ContentView.swift
//  Assignment #11
//  Created by Pedro Orellana
//  10/28/26.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Int = 0
    
 
    
    var body: some View {
        
        var backgroundColor = {
            switch selectedTab {
            case 0: Color.blue
            case 1: Color.gray
            case 2: Color.mint
            default: Color.black
            }
        }
        
        
        TabView(selection: $selectedTab) {
            Tab("Independence day", systemImage: "fireworks", value: 0) {
                
                CelebrationScreen(backgroundColor: Color.blue, fontColor: Color.white, celebrationName: "Dia de Independencia", celebrationImage: "dia_independencia", celebrationDesc: "Independence day in El Salvador is celebrated every year on September 15th. Much like in the USA and many other countries, it is a big national celebration, where we have many parades, food, dances, carnival games in major cities throughout the country")
            }
            
            Tab("Day of the dead", systemImage: "fireworks", value: 1) {
                CelebrationScreen(backgroundColor: Color.gray, fontColor: Color.white, celebrationName: "Dia de los difuntos", celebrationImage: "dia_muertos", celebrationDesc: "The day of the dead (dia de los difuntos) it's a national holiday that we celebrate on November 2nd. It is very similar to the more well-known Mexican celebration of the same name, and in the end they both have the same goal: to honor and remember our loved ones that have passed away")
            }
            
            Tab("August celebrations", systemImage: "fireworks", value: 2) {
                CelebrationScreen(backgroundColor: Color.mint, fontColor: Color.black, celebrationName: "Fiestas Agostinas", celebrationImage: "fiestas_agostinas", celebrationDesc: "\"Fiestas Agostinas\", or the celebration of August, is one of the most important holidays in El Salvador that take place between August 1st through August 6th. El Salvador has traditionally been a very religious country, and as such, this celebration is in honor of the \"Devine Savior of the World\" which is the country's patron")
            }
            
        }
    
        .padding()
        .background(backgroundColor())
    }
}

#Preview {
    ContentView()
}
