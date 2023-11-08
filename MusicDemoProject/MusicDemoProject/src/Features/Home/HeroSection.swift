//
//  HeroSection.swift
//  MusicDemoProject
//
//  Created by Gary on 11/7/23.
//

import SwiftUI

struct HeroSection: View {
    var title: String
    var festival: Festival
    
    var body: some View {
        Section() {
            HeroContent(artists: festival.artists)
        } label: {
            HeroHeader(title: title, date: festival.date)
        }
    }
}

#Preview {
    HeroSection(title: "Test Festival", festival: mockFestival())
}
