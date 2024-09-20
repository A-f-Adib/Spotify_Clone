//
//  NewEpisodes.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 20/9/24.
//

import SwiftUI

struct NewEpisodes: View {
    
    var podcasts: PodCast
    let prgress = CGFloat.random(in: 0 ... 30)
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    NewEpisodes(podcasts: podcasts[0])
}
