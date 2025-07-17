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
            VStack{
                Text("Talk about your day")
                    .font(.title)
                    .padding()
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
                DatePicker(selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: .date)
                { Text("Date") }
                TextField("How was your day? Add optional details", text: $newPost)
                    .padding()
                    .frame(width: 350, height: 130)
                    .background(Color.white)
                    .cornerRadius(20)
                HStack{
                    Button("Save") {
                        //this is for posting it on the feed (which is now going on the emoji chart)
                        newPost = ""
                        newEmoji = ""
                        newDate = Date.now
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.pink)
                    Button("Hide"){
                        newPost = ""
                        newEmoji = ""
                        newDate = Date.now
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.pink)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            .padding()
            //feel free to change this because I was not intending the app to be this color, but the AI just started autofilling
        }
    }
}
#Preview {
    BlogPostView()
}

//
