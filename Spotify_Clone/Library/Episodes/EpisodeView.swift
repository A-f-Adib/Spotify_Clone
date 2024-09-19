//
//  EpisodeView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 19/9/24.
//

import SwiftUI

struct EpisodeView: View {
    
    @State var srch: String = ""
    
    var body: some View {
      
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false)
            {
                VStack(alignment: .leading){
                    NewEpisodes(podcasts: podcasts[1])
                    NewEpisodes(podcasts: podcasts[4])
                    NewEpisodes(podcasts: podcasts[2])
                    
                    Text("Today")
                        .font(.subheadline)
                        .foregroundColor(.white).bold()
                        .opacity(0.6)
                        .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                                        
                    ForEach (0..<5){i in
                        EpisodeRow(podcasts: podcasts[i])
                    }
                    
                    Spacer()
                }
            }
        }.foregroundColor(.white)
    }
}

#Preview {
    EpisodeView()
}
