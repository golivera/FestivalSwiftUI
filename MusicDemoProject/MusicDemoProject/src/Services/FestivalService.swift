//
//  FestivalService.swift
//  MusicDemoProject
//
//  Created by Gary on 11/6/23.
//

import Foundation


enum APIError: Error {
    case decodeError
    case serverError
    case noDataError
}

enum FestivalAPI {
    case getAll

    func url() -> URLRequest {
        let base = "http://localhost:8000/"

        switch self {
        case .getAll:
            return URLRequest(url: URL(string: base + "festivals.json")!)
        }
    }
}


protocol FestivalServicing {
    func getAll() async -> [Festival]
}

struct FestivalService {

    let network: URLSession

    init(_ network: URLSession = URLSession.shared) {
        self.network = network
    }

}

extension FestivalService: FestivalServicing {
    func getAll() async -> [Festival] {
        let request = FestivalAPI.getAll.url()
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase

        do {
            let (data, _) = try await network.data(for: request)
            return try decoder.decode([Festival].self, from: data)
        } catch {
            print("Error FestivalService:getAll \(error)")
            return [Festival]()
        }
    }
}
