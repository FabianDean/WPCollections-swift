//
//  Theme.swift
//  WPCollections
//
//  Created by Fabian Flores on 10/13/20.
//

import Foundation

struct ThemeListData: Codable {
    var themes: [Theme]
}

struct Theme: Codable {
    var name: String
    var author: String
    var slug: String
    var homepage: String
    var description: String
    var downloads: Int
    var rating: Int
    var screenshot_url: String
    var preview_url: String
}
