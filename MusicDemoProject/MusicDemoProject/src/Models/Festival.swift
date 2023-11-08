//
//  Festival.swift
//  MusicDemoProject
//
//  Created by Gary on 11/7/23.
//

import Foundation


struct Festival: Identifiable, Hashable {
    var id: UUID
    let date: Date
    let artists: [Artist]
}

extension Festival: Decodable {
    private enum CodingKeys: String, CodingKey {
        case id
        case date
        case artists
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let allArtists = try container.decode([Artist].self)
        id = UUID()
        date = allArtists[0].date
        artists = allArtists
    }
}
