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
                }
                VStack {
                    Text("Fun Fact of the Day")
                        .font(.system(size: 30))
                    NavigationLink(destination: FunFact()) {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 20))                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                    }
                    .padding(10)
                    Text("Brainblog")
                        .font(.system(size: 50))                         .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                        .padding()
                        
                    
                    Text("Write a blog")
                        .font(.system(size: 30))
                    NavigationLink(destination: Blog()) {
                        Image(systemName: "pencil")
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                    }
                    Spacer()
                    Text("Emoji Chart of the Week")
                        .font(.system(size: 30))
                    NavigationLink(destination: EmojiChart()) {
                        Image(systemName: "face.smiling")
                            .font(.system(size: 20))                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                    }
                }
                }
            }
            
    
        }
    }

#Preview {
    ContentView()
}
