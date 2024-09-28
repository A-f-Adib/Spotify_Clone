//
//  AlbumListView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 29/9/24.
//

import SwiftUI

struct AlbumListView: View {
    
    var albumdetails: AlbumDetails
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading){
                    Text(albumdetails.title)
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(albumdetails.artists)
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .font(.system(size: 25))
                    .rotationEffect(.degrees(90))
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    AlbumListView(albumdetails:  isles[0])
        .previewLayout(.sizeThatFits)
}
