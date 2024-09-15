//
//  GenreView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 15/9/24.
//

import SwiftUI

struct GenreView: View {
    var playlists : PlayList
    var body: some View {
        ZStack (alignment: .leading){
//            LinearGradient(
//                gradient: Gradient(colors: [random()]),
//                startPoint: .leading, endPoint: .trailing)
            HStack(alignment: .top){
                Text(playlists.genre)
                    .font(.system(size: 14))
                    .kerning(0)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.leading, 10)
                    .padding(.top, -15)
                Spacer()
                Image(playlists.img)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .rotationEffect(.degrees(25))
                    .padding(.trailing, -18)
                    .padding(.bottom, -20)
            }
        }.frame(width: 120, height: 70)
        .clipShape(Rectangle())
        .cornerRadius(5)
    }
}

#Preview {
    GenreView(playlists: playlists[0])
}
