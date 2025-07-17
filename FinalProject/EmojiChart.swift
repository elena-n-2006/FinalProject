//
//  EmojiChart.swift
//  FinalProject
//
//  Created by Scholar on 7/17/25.
//

import SwiftUI
import SwiftData
import Charts

struct EmojiChart: View {
    struct ToyShape: Identifiable {
        var type: String
        var count: Double
        var id = UUID()
    }
    var data: [ToyShape] = [
        .init(type: "Cube", count: 5),
        .init(type: "Sphere", count: 4),
        .init(type: "Pyramid", count: 4)
    ]
    @Binding var stringValue: String
    var body: some View {
        Text("General Trend of Emojis")
            .font(.title)
            .padding()
        Chart {
            BarMark(
                    x: .value("Shape Type", data[0].type),
                    y: .value("Total Count", data[0].count)
                )
                BarMark(
                     x: .value("Shape Type", data[1].type),
                     y: .value("Total Count", data[1].count)
                )
                BarMark(
                     x: .value("Shape Type", data[2].type),
                     y: .value("Total Count", data[2].count)
                )
        }
        .padding()
    }
}

#Preview {
    EmojiChart(stringValue:.constant("Emoji Chart"))
}
