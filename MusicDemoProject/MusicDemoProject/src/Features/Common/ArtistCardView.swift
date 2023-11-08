//
//  ArtistCardView.swift
//  MusicDemoProject
//
//  Created by Gary on 11/6/23.
//

import SwiftUI

let IMAGE_ANIMATION_DURATION = 0.7

struct ArtistCardView: View {

    var artist: Artist

    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .padding(0)
                ArtistImageView(artist: artist)
                    .frame(maxHeight: .infinity)
            }
            ArtistFooterView(artist: artist)
        }
        .background(Color(CGColor(gray: 0.15, alpha: 1.0)))
        .clipShape(.rect(cornerRadius: 20.0))
    }
}

#Preview {
    return ArtistCardView(artist: mockArtist())
}
