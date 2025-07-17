//
//  ContentView.swift
//  FinalProject
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                HStack{
                    
                    VStack {
                        Text("Make a blog")
                        Text("Fun Fact of the Day:")
                        Text("Here's your emoji chart of the week")
                        Text("test")
                        
                        NavigationLink(destination: BrainFact()) {
                            Text("Show Me a Brain Fact")
                        }
                    }
                }
                .padding()
            }
        }
    }}

#Preview {
    ContentView()
}
