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
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView{
        
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
                .padding([.top,.bottom], 2)
                .padding(.leading, 5)
                .background(Color.white, alignment: .center)
                .cornerRadius(5)
                Spacer()
                Button("Filters"){
                }.padding(9)
                .cornerRadius(5)
                .foregroundColor(.gray)
                .background(Color.gray).opacity(0.4)
            }.padding(.bottom, 15)
            ForEach (0..<8){ index in
                AlbumRow(albums: albums[index])
            }
            Spacer()
        }
        .foregroundColor(.white)
    }
}

#Preview {
    AlbumsView()
}
