//
//  ContentView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 23/8/24.
//

import SwiftUI


struct ContentView: View {
    
   
    
    var body: some View {
       
        TabView{
            HomeView(mainAlbums: albums[0], mainPodcasts: podcasts[0])
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            SearchView(mainplaylists: playlists[0])
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }.tag(1)
                    
                    
                    LibraryView()
            
    }
}

#Preview {
    ContentView()
}
