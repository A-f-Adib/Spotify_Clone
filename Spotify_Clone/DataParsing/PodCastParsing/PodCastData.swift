//
//  PodCastData.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 28/8/24.
//

import Foundation

struct PodCast : Hashable , Codable {
    
    var img: String
    var podcast : String
    var episode: String
    var network: String
    var time: String
    var timeleft: Int
    var duration: Int
    var desc: String
}
