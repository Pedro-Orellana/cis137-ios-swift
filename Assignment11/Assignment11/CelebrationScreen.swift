//
//  CelebrationScreen.swift
//  Assignment #11
//  Created by Pedro Orellana
//  10/28/26.

import SwiftUI

struct CelebrationScreen: View {
    
    let backgroundColor: Color
    let fontColor: Color
    let celebrationName: String
    let celebrationImage: String
    let celebrationDesc: String
    
    
    var body: some View {
        VStack {
            Text(celebrationName)
                .padding(.top, 20)
                .font(.largeTitle)
                .foregroundStyle(fontColor)
            
            Image(celebrationImage)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .frame(width: 300, height: 300)
                
            
            Text(celebrationDesc)
                .padding(.horizontal, 20)
                .padding(.vertical, 30)
                .multilineTextAlignment(.center)
                .font(.default)
                .foregroundStyle(fontColor)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
        .background(backgroundColor)
            
    }
}

#Preview {
    
    CelebrationScreen(
        backgroundColor: Color.blue, fontColor: Color.white, celebrationName: "Dia de Independncia", celebrationImage: "dia_independencia", celebrationDesc: "This is the description for independence day (dia de independencia) And this is some more text to demonstrate how a big text is going to be displayed in this screen, making sure that everything fits correctly on the screen."
    )
}
