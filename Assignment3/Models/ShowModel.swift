//
//  ShowModel.swift
//  Assignment3
//
//  Created by Alen Yakovlev on 3/27/24.
//

import Foundation

struct ShowModel : Codable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let image: String?
    let episode: [String]
}

struct Characters : Codable {
    let results : [ShowModel]
}
