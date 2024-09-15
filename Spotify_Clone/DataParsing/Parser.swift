//
//  Parser.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 28/8/24.
//

import Foundation

var albums : [ Album] = Load("AlbumData.json")
var podcasts : [PodCast] = Load("PodcastData.json")
var isles : [AlbumDetails] = Load("Isles.json")
var playlists : [PlayList] = Load("PlayListData.json")

func Load<T:Decodable> (_ fileName : String) -> T {
   
    let data : Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError()
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError()
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError()
    }
}
