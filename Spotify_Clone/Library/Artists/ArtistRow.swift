//
//  ArtistRow.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 19/9/24.
//

import SwiftUI

struct ArtistRow: View {
    var albums: Album
    var body: some View {
        HStack{
            Image(albums.artistimg)
                .resizable()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 65, height: 65)
            Text(albums.artist)
                .font(.headline).bold()
                .padding(.leading, 10)
            Spacer()
                
        }
    }
}

#Preview {
    ArtistRow(albums: albums[0])
}
