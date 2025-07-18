//
//  SwiftUIView.swift
//  FinalProject
//
//  Created by Gianna on 7/16/25.
//

import SwiftUI
import SwiftData

struct BrainFact: View {
    let facts = [
        "Your brain uses about 20% of your body’s total energy.",
        "Neurons in the brain can send signals at over 200 miles per hour.",
        "The brain itself can't feel pain.",
        "Memories are reconstructed, not replayed.",
        "Your brain is sometimes more active when you're asleep."
    ]

    var body: some View {
        ZStack {
            LinearGradient( gradient: Gradient(colors: [
                Color(red: 0.95, green: 0.8, blue: 0.95),
                Color(red: 0.85, green: 0.6, blue: 0.85)
            ]), startPoint: .top, endPoint: .bottom)
        }
        VStack(spacing: 20) {
            Text("🧠 Brain Fact 🧠")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.4, green: 0.1, blue: 0.4))
                .padding(.top)

            Text(facts.randomElement() ?? "Brains are cool!")
                .font(.title2)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .padding()
                .background( RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white.opacity(0.8))
                    .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 5))
                .padding(.horizontal,30)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    BrainFact()
}
