//
//  HeroContent.swift
//  MusicDemoProject
//
//  Created by Gary on 11/7/23.
//

import SwiftUI

struct HeroContent: View {
    var artists: [Artist]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(artists) { artist in
                    ArtistCardView(artist: artist)
                        .scrollTransition(axis: .horizontal) { content, phase in
                            content
                                .scaleEffect(
                                    x: phase.isIdentity ? 1.0 : 0.80,
                                    y: phase.isIdentity ? 1.0 : 0.80)
                        }
                        .containerRelativeFrame(.horizontal)
                }
            }
            .scrollTargetLayout()
        }
        .contentMargins(.horizontal, hMargin)
        .scrollIndicators(.never)
    }
    
    var hMargin: CGFloat {
        20.0
    }
    
    var hSpacing: CGFloat {
        10.0
    }
}

#Preview {
    HeroContent(artists: mockArtists())
}
