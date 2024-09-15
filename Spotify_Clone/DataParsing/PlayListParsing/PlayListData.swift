//
//  PlayListData.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 15/9/24.
//

import Foundation

struct PlayList : Hashable, Codable {
    var img: String
    var name: String
    var genre : String
    var creator : String
}
