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
                HStack{
                    
                    VStack {
                        Text("Make a blog")
                        Text("Fun Fact of the Day:")
                        Text("Here's your emoji chart of the week")
                        Text("test")
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
