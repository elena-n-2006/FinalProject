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
        Text("What's your mood today?")
            .font(.title)
            .padding()
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
