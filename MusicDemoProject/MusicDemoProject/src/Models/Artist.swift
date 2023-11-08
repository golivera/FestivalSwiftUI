//
//  Festival.swift
//  MusicDemoProject
//
//  Created by Gary on 11/6/23.
//

import Foundation


/*

 {
 "name": "Model/Actriz",
 "id": 1,
 "summary": "",
 "location": "pier_stage",
 "date": "2023-09-30T14:00",
 "end": "2023-09-30T14:50",
 "tags": [],
 "artist_ids": [
 1
 ],
 "artist_info": "Model/Actriz: Model/Actriz is an avant-garde rock band known for their electrifying performances and post-punk influences."
 },

 */


struct Artist: Identifiable, Hashable {
    let name: String
    let id: Int
    let summary: String
    let location: String
    let date: Date
    let end: Date
    let tags: [String]
    let artistIds: [Int]
    let artistInfo: String
    let artistImage: String?
}

extension Artist: Decodable {
    private enum CodingKeys: String, CodingKey {
        case name
        case id
        case summary
        case location
        case date
        case end
        case tags
        case artistIds
        case artistInfo
        case artistImage
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        name = try container.decode(String.self, forKey: .name)
        id = try container.decode(Int.self, forKey: .id)
        summary = try container.decode(String.self, forKey: .summary)
        location = try container.decode(String.self, forKey: .location)
        tags = try container.decode([String].self, forKey: .tags)
        artistIds = try container.decode([Int].self, forKey: .artistIds)
        artistInfo = try container.decode(String.self, forKey: .artistInfo)
        artistImage = try container.decodeIfPresent(String.self, forKey: .artistImage)

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm"

        guard let dateStr = try? container.decode(String.self, forKey: .date),
            let dateOjb = dateFormatter.date(from: dateStr) else {
            fatalError("Artist - start date parse failed")
        }
        date = dateOjb

        guard let endStr = try? container.decode(String.self, forKey: .end),
              let endOjb = dateFormatter.date(from: endStr) else {
            fatalError("Artist - end date parse failed")
        }
        end = endOjb

    }

}
