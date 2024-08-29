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
                
                Image(podCasts.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                Text(podCasts.podcast)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .padding(.top, 2)
                Text("Show · \(podCasts.network)")
                    .foregroundColor(.white)
                    .font(.system(size:13))
                    .padding(.top, 1)
            }
            .frame(width: 150)
        }
    }
}

#Preview {
    PodCastList(podCasts: podcasts[0])
}
