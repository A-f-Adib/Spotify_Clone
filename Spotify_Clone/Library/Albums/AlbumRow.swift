//
//  AlbumRow.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 17/9/24.
//

import SwiftUI

struct AlbumRow: View {
    var albums: Album
    var body: some View {
       
        HStack{
            Image(albums.img)
                .resizable()
                .frame(width: 65, height: 65)
            VStack(alignment: .leading) {
                Text(albums.album)
                    .font(.headline).bold()
                    .padding(.leading, 5)
                Text(albums.artist)
                    .padding(.leading, 5)
                    .font(.subheadline)
                    .opacity(0.7)
            }
            Spacer()
        }
    }
}

#Preview {
    AlbumRow(albums:  albums[0])
}
