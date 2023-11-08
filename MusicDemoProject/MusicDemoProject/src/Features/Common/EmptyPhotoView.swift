//
//  EmptyPhotoView.swift
//  MusicDemoProject
//
//  Created by Gary on 11/6/23.
//

import SwiftUI

struct EmptyPhotoView: View {
    var body: some View {
        Image(systemName: "photo")
            .containerRelativeFrame(.horizontal)
            .foregroundColor(.white)
            .font(.largeTitle)
    }
}

#Preview {
    EmptyPhotoView()
}
