//
//  emojiReveal.swift
//  FinalProject
//
//  Created by Scholar on 7/18/25.
//

import SwiftUI
struct emojiReveal: View {
  var emoji: String
    @Binding var newDate: Date
  var body: some View {
    ForEach(Array(emoji), id: \.self) { char in
      Text("\(char) for \(newDate)")
    }
     
  }
}
