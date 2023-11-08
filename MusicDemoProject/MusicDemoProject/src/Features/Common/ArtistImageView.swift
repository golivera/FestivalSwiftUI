//
//  ArtistImageView.swift
//  MusicDemoProject
//
//  Created by Gary on 11/6/23.
//

import SwiftUI

struct ArtistImageView: View {

    let artist: Artist

    var body: some View {
        ZStack {
            if let artistImage = artist.artistImage,
               let imageUrl = URL(string: artistImage) {
                AsyncImage(
                    url: imageUrl,
                    transaction: Transaction(animation: .easeIn(duration: IMAGE_ANIMATION_DURATION))
                ) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    case .failure(_):
                        EmptyPhotoView()
                    @unknown default:
                        // TODO: add logging/tracking for further investigatigon
                        EmptyPhotoView()
                    }
                }
            } else {
                EmptyPhotoView()
            }
        }
    }
}

#Preview {
    return ArtistImageView(artist: mockArtist())
}
