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

                // Background gradient
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

                    // Blog section card
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(red: 1.0, green: 0.72, blue: 0.78))
                        .frame(height: 100)
                        .overlay(
                            Text("✍️ Make a Blog")
                                .font(.title2)
                                .foregroundColor(.black)
                        )
                        .padding(.horizontal)

                    // Fun Fact card
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(red: 1.0, green: 0.65, blue: 0.75))
                        .frame(height: 100)
                        .overlay(
                            Text("🧠 Fun Fact of the Day")
                                .font(.title2)
                                .foregroundColor(.black)
                        )
                        .padding(.horizontal)

                    // Emoji Chart card
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(red: 0.98, green: 0.55, blue: 0.66))
                        .frame(height: 100)
                        .overlay(
                            Text("📊 Emoji Chart of the Week")
                                .font(.title2)
                                .foregroundColor(.black)
                        )
                        .padding(.horizontal)

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
            }
        }
    }
}

#Preview {
    ContentView()
}

                    
               


