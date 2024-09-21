//
//  DownloadsView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 21/9/24.
//

import SwiftUI

struct DownloadsView: View {
    var body: some View {
        HStack {
            Text("Tap")
                .kerning(-0.2)
            Image(systemName: "arrow.down.circle")
            VStack {
                Text("on an episode to listen without a connection")
                    .kerning(-0.2)
            }
        }.foregroundColor(.white)
        .font(.system(size: 12))
        .padding(.top, 3)
        .padding(.bottom)
    }
}

#Preview {
    DownloadsView()
}
