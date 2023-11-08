//
//  HomeViewModel.swift
//  MusicDemoProject
//
//  Created by Gary on 11/6/23.
//

import Foundation


class HomeViewModel: ObservableObject {
    
    @Published var festivals = [Festival]()
    var service: FestivalService
    
    init(service: FestivalService) {
        self.service = service
    }
    
    @MainActor
    func fetch() async {
        self.festivals = await service.getAll()
    }
}
