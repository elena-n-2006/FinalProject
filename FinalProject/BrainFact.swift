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
        VStack(spacing: 20) {
            Text("🧠 Brain Fact 🧠")
                .font(.largeTitle)
                .padding()

            Text(facts.randomElement() ?? "Brains are cool!")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()

            Spacer()
        }
        .padding()
    }
}

#Preview {
    BrainFact()
}
