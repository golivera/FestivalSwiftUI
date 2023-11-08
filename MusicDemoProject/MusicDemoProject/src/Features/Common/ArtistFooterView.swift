//
//  ArtistFooterView.swift
//  MusicDemoProject
//
//  Created by Gary on 11/7/23.
//

import SwiftUI


struct ArtistFooterView: View {
    var artist: Artist

    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: FOOTER_HEIGHT)
                .foregroundColor(Color(CGColor(gray: 0.15, alpha: 1.0)))
            VStack(alignment: .leading) {
                Text(artist.name)
                    .foregroundStyle(.white)
                    .font(.title3)
                HStack {
                    Text(artist.date.formatted(date: .omitted, time: .shortened))
                    Text("-")
                    Text(artist.end.formatted(date: .omitted, time: .shortened))
                    Spacer()
                }
                .foregroundColor(.white)
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    ArtistFooterView(artist: mockArtist())
}
