//
//  Plugin.swift
//  WPCollections
//
//  Created by Fabian Flores on 10/13/20.
//

import Foundation

struct PluginResponse: Codable {
    var plugins: [Plugin]
}

struct Plugin: Codable {
    var name: String
    var author: String
    var slug: String
    var downloads: Int
    var rating: Int
    var ratings: [Int]
    var homepage: String
    var description: String
    var short_description: String
}
