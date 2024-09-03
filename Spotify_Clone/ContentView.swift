//
//  ContentView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 23/8/24.
//

import SwiftUI


struct ContentView: View {
    
    let darkGray:Color = Color(red: 0.15, green: 0.15, blue: 0.15)
    
    var body: some View {
       
                    Text("Search")
             
                    Image(systemName: "books.vertical")
                    Text("Library")
                }.tag(2)
                
        }.accentColor(.white)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            
    }
}

#Preview {
    ContentView()
}
