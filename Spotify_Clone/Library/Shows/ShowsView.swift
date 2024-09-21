//
//  ShowsView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 21/9/24.
//

import SwiftUI

struct ShowsView: View {
    
    var body: some View {
       
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading){
                ForEach (0..<5) {i in
                    ShowRow(podcasts: podcasts[i])
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ShowsView()
}
