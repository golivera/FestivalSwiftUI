//
//  Mocks.swift
//  MusicDemoProject
//
//  Created by Gary on 11/7/23.
//

import Foundation


func mockArtist() -> Artist {
    return Artist(name: "Model/Actriz",
                  id: 1,
                  summary: "",
                  location: "pier_state",
                  date: Date.now,
                  end: Date.now,
                  tags: [],
                  artistIds: [
                    1
                  ],
                  artistInfo: "Model/Actriz: Model/Actriz is an avant-garde rock band known for their electrifying performances and post-punk influences.",
                  artistImage:  "https://acehotel.com/wp-content/uploads/2023/01/maddy-maia-rLRqiW.tmp_.jpg")
}

func mockArtists() -> [Artist] {
    return [
        mockArtist(),
        mockArtist(),
        mockArtist()
    ]
}


func mockFestival() -> Festival {
    return Festival(id: UUID(),
                    date: Date.now,
                    artists: mockArtists())
}

