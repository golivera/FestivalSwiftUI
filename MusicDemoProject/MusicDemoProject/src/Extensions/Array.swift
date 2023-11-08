//
//  Array.swift
//  MusicDemoProject
//
//  Created by Gary on 11/7/23.
//

import Foundation


extension Array: Identifiable where Element: Hashable {
    public var id: Self { self }
}
