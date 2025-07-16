//
//  SwiftUIView.swift
//  FinalProject
//
//  Created by Gianna on 7/16/25.
//


import SwiftUI

struct BrainFact: View {
    @State private var goToFacts = false
    var body: some View {
        NavigationStack{
            ZStack {
                HStack{
                    
                    VStack {
                        Text("Make a blog")
                        Text("Fun Fact of the Day:")
                        Text("Here's your emoji chart of the week")
                    }
                }
            
            }
            Button(action: {
                                    goToFacts = true
            }) {
                Text("Show Me a Brain Fact")
                    .font(.headline)
                    .padding()
                    .frame(width: 240)
                    .background(Color.pink)
                    .foregroundColor(.white)
                .cornerRadius(12)}
         
            NavigationLink(destination: BrainFact()){
                Text("Show Brain Fact")
            }
                                    
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
