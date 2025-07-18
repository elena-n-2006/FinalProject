//
//  BlogPostView.swift
//  FinalProject
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI
import SwiftData

struct BlogPostView: View {
    @State private var newPost = ""
    @State private var newEmoji = ""
    @State private var newDate = Date.now
    @State private var feelingText = "Choose how you are feeling"
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [
                    Color(red: 1.0, green: 0.9, blue: 0.95),
                    Color(red: 0.95, green: 0.85, blue: 1.0)
                ]), startPoint: .topLeading, endPoint: .bottomTrailing)
            }
            VStack(spacing: 25) {
                Text("Talk about your day")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red:0.5, green:0.1, blue: 0.4))
                    .padding(.top)
                Menu(feelingText) {
                    Button("🥰") {
                        newEmoji = "🥰"
                        feelingText = "You chose that you're feeling like \(newEmoji)"
                    }
                    Button("🫠") {
                        newEmoji = "🫠"
                        feelingText = "You chose that you're feeling like \(newEmoji)"
                    }
                    Button("😂") {
                        newEmoji = "😂"
                        feelingText = "You chose that you're feeling like \(newEmoji)"
                    }
                    Button("😡") {
                        newEmoji = "😡"
                        feelingText = "You chose that you're feeling like \(newEmoji)"
                    }
                }
                .padding()
                .background(Color.white.opacity(0.8))
                .cornerRadius(15)
                .foregroundColor(.black)
                .shadow(radius:5)
                
                DatePicker(selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: .date)
                { Text("Date")
                        .foregroundColor(.black)
                }
                .padding()
                .background(Color.white.opacity(0.8))
                .cornerRadius(15)
                .foregroundColor(.black)
                .shadow(radius:5)
                
                TextField("How was your day? Add optional details", text: $newPost)
                    .padding()
                    .frame(width: 350, height: 130)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(20)
                    .shadow(radius: 5)
                
                HStack(spacing:30){
                    Button("Save") {
                        //this is for posting it on the feed (which is now going on the emoji chart)
                        newPost = ""
                        newEmoji = ""
                        newDate = Date.now
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red:1.0, green:0.6, blue:0.7))
                    .cornerRadius(15)
                    
                    Button("Hide"){
                        newPost = ""
                        newEmoji = ""
                        newDate = Date.now
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 1.0, green: 0.6, blue:0.7))
                    .cornerRadius(15)
                }
                Spacer()
            }
            .padding()
        }
    }
}
#Preview {
    BlogPostView()
}

//
