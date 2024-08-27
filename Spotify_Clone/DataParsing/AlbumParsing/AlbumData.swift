//
//  AlbumData.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 28/8/24.
//

import Foundation

struct Album: Hashable, Codable {
    var image: String
    var album : String
    var artistImage : String
    var artist : String
    var badge: Bool
    var year : String
    var date : String
    var songs: Int
    var time : String
    var copyright: String
}
