//
//  ContentView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 23/8/24.
//

import SwiftUI


struct ContentView: View {
    
    let darkGray:Color = Color(red: 0.15, green: 0.15, blue: 0.15)
    
    init() {
        UITabBar.appearance().barTintColor = .black
    }
    
    var body: some View {
       
        TabView{
            HomeView(mainAlbums: albums[0], mainPodcasts: podcasts[0])
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
    }
}

#Preview {
    ContentView()
}
