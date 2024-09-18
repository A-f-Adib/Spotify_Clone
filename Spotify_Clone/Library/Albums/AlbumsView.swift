//
//  AlbumsView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 18/9/24.
//

import SwiftUI

struct AlbumsView: View {
    @State var srch:String = ""
    var body: some View {
        
        
        HStack (alignment: .center,
                spacing: 10) {
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 15, height: 15, alignment: .center)
                .foregroundColor(.black)
                
                .frame(minWidth: 0, maxWidth: 30)
                .frame(minHeight: 0, maxHeight: 33)
            
            TextField ("Find in albums", text: $srch).frame(height: 20)
        }
    }
}

#Preview {
    AlbumsView()
}
