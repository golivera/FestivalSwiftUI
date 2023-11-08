//
//  ContentView.swift
//  MusicDemoProject
//
//  Created by Gary on 11/6/23.
//

import SwiftUI

struct ContentView: View {
    let viewModel = HomeViewModel(service: FestivalService())

    var body: some View {
        HomeView(viewModel: viewModel)
    }
}

#Preview {
    ContentView()
}
