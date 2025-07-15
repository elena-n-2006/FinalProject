//
//  ContentView.swift
//  FinalProject
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                VStack {
                    Text("Make a blog")
                    Spacer()
                    Text("Fun Fact of the Day:")
                    Spacer()
                    Text("Here's your emoji chart of the week")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
