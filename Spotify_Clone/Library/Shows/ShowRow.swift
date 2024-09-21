//
//  ShowRow.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 21/9/24.
//

import SwiftUI

struct ShowRow: View {
    
    var podcasts: PodCast
    
    var body: some View {
       
        HStack{
            Image(podcasts.img)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
                .cornerRadius(5)
            VStack(alignment: .leading){
                Text(podcasts.podcast)
                    .font(.system(size: 15, weight: .bold))
                Text("Updated \(podcasts.time) • \(podcasts.network)")
                    .font(.system(size: 13, weight: .bold))
                    .opacity(0.7)
            }.foregroundColor(.white)
            Spacer()
        }
    }
}

#Preview {
    ShowRow(podcasts: podcasts[0])
}
