//
//  Blog Post.swift
//  FinalProject
//
//  Created by Scholar on 7/15/25.
//

import Foundation
import SwiftData

@Model
class BlogPost {
    var post: String
    var emoji: String
    var today: Date
    
    init(post: String, emoji: String, today: Date) {
        self.post = post
        self.emoji = emoji
        self.today = today
    }
}
