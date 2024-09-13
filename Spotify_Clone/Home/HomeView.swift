//
//  HomeView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 14/9/24.
//

import SwiftUI

let AlbumImageList = ["isles", "together", "tellme", "enough", "blackp", "nopressure"]

let AlbumTitleList = ["Isles", "Together", "Tell Me", "Enough to Believe", "Black Panther", "No Pressure"]

let AlbumArtistList = ["Jon Gurd", "Tinlicker", "Bob Moses", "Various Artists", "Logic"]

struct HomeView: View {
    
    var mainAlbums: Album
    var mainPodcasts : PodCast
    var islesdeets : AlbumDetails = isles[0]
    
    init(mainAlbums: Album, mainPodcasts: PodCast) {
        self.mainAlbums = mainAlbums
        self.mainPodcasts = mainPodcasts
       
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            ScrollView{
                ZStack{
                    LinearGradient(gradient:
                                     Gradient(stops: [.init(color: .gray, location: 0.0),
                                                     .init(color: .black, location: 0.25),
                                                      .init(color: .black, location: 0.6)]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                    .ignoresSafeArea(.all)
                    
                    VStack(alignment: .center){
                        HStack{
                            Text("Good Morning")
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                            Image(systemName: "clock.arrow.circlepath")
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 23, height: 23)
                            Image(systemName: "gearshape")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.white)
                                .frame(width: 23, height: 23)
                                .padding(.leading, 10)
                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(.bottom, 20)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView(mainAlbums: albums[0], mainPodcasts: podcasts[0])
}
