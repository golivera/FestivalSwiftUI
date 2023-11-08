//
//  HomeView.swift
//  MusicDemoProject
//
//  Created by Gary on 11/6/23.
//

import SwiftUI


let IMAGE_HEIGHT = 500.0
let FOOTER_HEIGHT = 75.0
let HERO_SECTION_HEIGHT = IMAGE_HEIGHT + FOOTER_HEIGHT


struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        ScrollView {
            ForEach(Array(viewModel.festivals.enumerated()), id: \.element) { offset, festival in
                HeroSection(title: "Day \(offset + 1)/\(viewModel.festivals.count)",
                            festival: festival)
                    .frame(height: HERO_SECTION_HEIGHT)
            }
        }
        .background(Color(CGColor(gray: 0.10, alpha: 1.0)))
        .task {
            await viewModel.fetch()
        }
    }
}

#Preview {
    let service = FestivalService()
    let viewModel = HomeViewModel(service: service)
    return HomeView(viewModel: viewModel)
}
