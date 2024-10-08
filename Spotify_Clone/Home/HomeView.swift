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
                        
                        HStack {
                            Spacer(minLength: 20)
                            VStack {
                                HStack {
                                    NewItems(album: albums[0])
                                    NewItems(album: albums[1])
                                }
                                
                                HStack{
                                    NewItems(album: albums[2])
                                    NewItems(album: albums[3])
                                }
                                HStack{
                                    NewItems(album: albums[4])
                                    NewItems(album: albums[5])
                                }
                            }
                            Spacer(minLength: 20)
                        }
                        
                        
                        HStack(){
                            Image(mainAlbums.artistimg)
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                            VStack(alignment: .leading){
                                Text("MORE LIKE")
                                    .font(.system(size: 10))
                                    .tracking(1)
                                    .foregroundColor(.white)
                                    .font(.caption)
                                Text(mainAlbums.artist)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            
                            Spacer()
                        }
                        .padding()
                        .padding(.bottom, -10)
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .top){
                                AlbumList(albums: albums[1])
                                AlbumList(albums: albums[2])
                                AlbumList(albums: albums[3])
                                AlbumList(albums: albums[4])
                                AlbumList(albums: albums[5])
                            }
                        }.padding(.leading)
                        .padding(.trailing)
                        
                        HStack {
                            Text("Podcasts")
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Spacer()
                        }.padding()
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .top){
                                PodCastList(podCasts: podcasts[0])
                                podlist(img: "supernatural", name: "Supernatural with Ashley Flowers", network: "Parcast Network")
                                podlist(img: "serialk", name: "Serial Killers", network: "Parcast Network")
                                podlist(img: "morbid", name: "Morbid: A True Crime Podcast", network: "Morbid Network")
                                podlist(img: "hauntedp", name: "Haunted Places", network: "Parcast Network")
                                podlist(img: "casefile", name: "Casefile", network: "Casefile Presents")
                            }.padding(.leading)
                            .padding(.trailing)
                        }
                        
                        Spacer()
                    }
                    .padding(.top, 40.0)
                    .padding(.bottom, 100)
                }
            }.ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
}

func podlist(img: String, name: String, network: String) -> some View{
    return VStack(alignment: .leading){
        Image(img)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150)
        Text(name)
            .foregroundColor(.white)
            .font(.system(size: 17))
            .fontWeight(.semibold)
            .padding(.top, 2)
        Text("Show · \(network)")
            .foregroundColor(.white)
            .font(.system(size:13))
            .padding(.top, 1)
    }
    .frame(width: 150)
}

#Preview {
    HomeView(mainAlbums: albums[0], mainPodcasts: podcasts[0])
}
