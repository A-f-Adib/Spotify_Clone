//
//  AlbumData.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 28/8/24.
//

import Foundation

struct Album: Hashable, Codable {
    var img: String
    var album : String
    var artistimg : String
    var artist : String
    var badge: Bool
    var year : String
    var date : String
    var songs: Int
    var time : String
    var cright: String
}
