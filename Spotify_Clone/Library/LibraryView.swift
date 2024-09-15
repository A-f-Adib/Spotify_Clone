//
//  LibraryView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 16/9/24.
//

import SwiftUI

var darkGray = Color(red: 0.15, green: 0.15, blue: 0.15)

struct LibraryView: View {
    
    @State var srch: String = ""
    @State var libIndex: Int=0
    
    var body: some View {
        
        ZStack(alignment: .leading){
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading){
                HStack(spacing: 20){
                    if(self.libIndex<3) {
                        Button("Music"){
                            self.libIndex=0
                        }.font(.system(size: 35, weight: .bold))
                        .foregroundColor(.white)
                    }
                    else
                    {
                        Button("Music"){
                            self.libIndex=0
                        }.font(.system(size: 35, weight: .bold))
                        .foregroundColor(.gray)
                    }
    }
}

#Preview {
    LibraryView()
}
