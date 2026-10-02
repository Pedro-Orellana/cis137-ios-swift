//
//  ContentView.swift
//  Assignment7
//  Created by Pedro Orellana.
//  09/30/26

import SwiftUI

extension VerticalAlignment {
    
    enum CustomAlignment: AlignmentID {
        
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[VerticalAlignment.top]
        }
    }
    
    static let customAlignment = VerticalAlignment(CustomAlignment.self)
}




struct ContentView: View {
    var body: some View {
            
        ZStack {
            Image("background_image")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            
            VStack {
                HStack(alignment: .customAlignment) {
                    Image("selfie")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 180)
                        .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                        .alignmentGuide(.customAlignment) { dimensions in
                            dimensions[VerticalAlignment.center]
                        }
            
                    
                    VStack(alignment: .center) {
                        Text("Pedro Orellana")
                            .font(.title)
                            .alignmentGuide(.customAlignment) { dimensions in
                                dimensions[VerticalAlignment.center]
                            }
                        Text("Software and hardware developer")
                            .fontWeight(.bold)
                            .font(.caption)
                            .multilineTextAlignment(.center)
                        
                    }
                    .frame(maxWidth: 180)
                }
                .padding(.top, 25)
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("A little about myself:")
                        .fontWeight(.bold)
                        .font(.title2)
                        .padding(.bottom, 10)
                    Text("My name is Pedro Orellana and I am originally from El Salvador. This is my third semester at CSM, but I have been very passionate and interested in tech for a while.")
                        .frame(maxWidth: 300)
                        .multilineTextAlignment(.leading)
                    
                    Text("When I'm not working on a project on my computer, I like to go workout at the gym, going for a bike ride or going for a walk at the beach")
                        .frame(maxWidth: 300)
                        .multilineTextAlignment(.leading)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                
                Spacer()
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }

    }
}

#Preview {
    ContentView()
}
