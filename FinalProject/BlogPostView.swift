//
//  BlogPostView.swift
//  FinalProject
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI
import SwiftData

struct BlogPostView: View {
    var body: some View {
        VStack{
            Text("What's your mood today?")
                .font(.title)
                .padding()
            Menu("Emojis:") {
                Text("Test")
                Text("Test")
                Text("test")
            }
            TextEditor(text: /*@START_MENU_TOKEN@*/.constant("Placeholder")/*@END_MENU_TOKEN@*/)
                .frame(height: 300)
                .padding()
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            .padding()
            .foregroundColor(.white)
            .shadow(radius: 10)
    }
}

#Preview {
    BlogPostView()
}
