//
//  PodCastList.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 28/8/24.
//

import SwiftUI

struct PodCastList: View {

    var podCasts : PodCast
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Image(podcasts.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
    }
}

#Preview {
    PodCastList(podCasts: podcasts[0])
}
