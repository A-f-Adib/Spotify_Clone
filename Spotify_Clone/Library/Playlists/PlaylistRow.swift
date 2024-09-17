//
//  PlaylistRow.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 17/9/24.
//

import SwiftUI

struct PlaylistRow: View {
    
    var playlists: PlayList
    
    var body: some View {
        HStack{
            Image(playlists.img)
                .resizable()
                .clipShape(Rectangle())
                .frame(width: 65, height: 65)
                .background(darkGray)
            VStack(alignment: .leading) {
                Text(playlists.name)
                    .font(.headline).bold()
                Text(playlists.creator)
                    .font(.subheadline)
                    .opacity(0.7)
            }.padding(.leading, 10)
            Spacer()
        }
    }
}

#Preview {
    PlaylistRow(playlists:  playlists[0])
}
