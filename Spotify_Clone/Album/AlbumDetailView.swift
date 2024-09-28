//
//  AlbumDetailView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 29/9/24.
//

import SwiftUI

var btnBack : some View { Button(action: {
    
    self.presentationMode.wrappedValue.dismiss()
}) {
    VStack(alignment: .trailing) {
        HStack {
            Image(systemName: "chevron.backward")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
            Spacer(minLength: 330)
            Image(systemName: "heart")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
            Image(systemName: "ellipsis")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .rotationEffect(.degrees(90))
        }
    }
}.navigationBarHidden(false)
}

struct AlbumDetailView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AlbumDetailView()
}
