//
//  AlbumList.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 28/8/24.
//

import SwiftUI

struct AlbumList: View {
    var albums: Album
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Image(albums.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
            }
        }
    }
}

#Preview {
    AlbumList()
}
