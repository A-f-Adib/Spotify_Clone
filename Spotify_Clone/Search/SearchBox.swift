//
//  SearchBox.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 30/9/24.
//

import SwiftUI

struct SearchBox: View {
    @State var srch: String = ""
    var body: some View {
        HStack (alignment: .center,
                spacing: 10) {
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 15, height: 15, alignment: .center)
                .foregroundColor(.black)
                
                .frame(minWidth: 0, maxWidth: 30)
                .frame(minHeight: 0, maxHeight: 33)
            
            TextField ("Artists, songs, or podcasts", text: $srch).frame(height: 40)
        }
    }
}

#Preview {
    SearchBox()
}
