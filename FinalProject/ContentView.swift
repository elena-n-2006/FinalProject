//
//  ContentView.swift
//  FinalProject
//
//  Created by Scholar on 7/15/25.
//


import SwiftUI
import SwiftData

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
        NavigationStack {
            ZStack {
                // Gradient brain-pink background
                LinearGradient(gradient: Gradient(colors: [
                    Color(red: 1.0, green: 0.89, blue: 0.94),
                    Color(red: 1.0, green: 0.78, blue: 0.86),
                    Color(red: 0.96, green: 0.59, blue: 0.72)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea()
                
                VStack(spacing: 30) {
                    // Title
                    Text("🧠 Brain Blog")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    // Blog card
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(red: 1.0, green: 0.72, blue: 0.78))
                        .frame(height: 100)
                        .overlay(
                            VStack {
                                Text("✍️ Make a Blog")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                Text("Start journaling your thoughts!")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                            }
                        )
                        .padding(.horizontal)
                    
                    // Fun fact card
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(red: 1.0, green: 0.65, blue: 0.75))
                        .frame(height: 100)
                        .overlay(
                            VStack {
                                Text("🧠 Fun Fact of the Day")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                NavigationLink(destination: BrainFact()) {
                                    Text("Tap to see a brain fact")
                                        .font(.subheadline)
                                        .foregroundColor(.blue)
                                }
                            }
                        )
                        .padding(.horizontal)
                    
                    // Emoji chart card
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(red: 0.98, green: 0.55, blue: 0.66))
                        .frame(height: 100)
                        .overlay(
                            VStack {
                                Text("📊 Emoji Chart")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                Text("Check your mood history!")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                            }
                        )
                        .padding(.horizontal)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
