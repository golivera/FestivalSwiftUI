//
//  HeroHeader.swift
//  MusicDemoProject
//
//  Created by Gary on 11/7/23.
//

import SwiftUI

struct HeroHeader: View {
    var title: String
    var date: Date

    var body: some View {
        VStack(alignment: .leading, spacing: 2.0) {
            HStack {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                Spacer()
                Text(date.formatted(date: .abbreviated, time: .omitted))
                    .font(.subheadline)
                    .foregroundStyle(Color.white)
            }
        }
        .padding(.horizontal, hMargin)
    }

    var hMargin: CGFloat {
        20.0
    }
}

#Preview {
    HeroHeader(title: "Tester Twenty", date: Date.now)
}
