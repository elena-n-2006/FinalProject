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
                Color(red: 0.95, green: 0.75, blue: 0.85)                .ignoresSafeArea()
                
                HStack{
                    
                    VStack {
                        Text("Make a blog")
                        Text("Fun Fact of the Day:")
                        Text("Here's your emoji chart of the week")
                                    }
                }
            }
            
            
        }
    }
}
#Preview {
    ContentView()
}
