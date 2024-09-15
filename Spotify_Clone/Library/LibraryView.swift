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
                    if(self.libIndex>=3) {
                        Button("Podcasts"){
                            self.libIndex=3
                        }.font(.system(size: 35, weight: .bold))
                        .foregroundColor(.white)
                    }
                    else
                    {
                        Button("Podcasts"){
                            self.libIndex=3
                        }.font(.system(size: 35, weight: .bold))
                        .foregroundColor(.gray)
                    }
                }
                .padding(.bottom, 10)
                
                
                if (self.libIndex == 0 || libIndex==1 || libIndex == 2)
                {
                    HStack(alignment: .top, spacing: 30){
                        VStack(alignment: .center){
                            if (self.libIndex==0) {
                                Button("Playlists"){
                                    withAnimation{
                                        self.libIndex=0
                                    }
                                }.font(.system(size: 17, weight: .bold))
                                Rectangle()
                                    .frame(width: 89, height: 3)
                                    .foregroundColor(.green)
                                    .transition(.slide)
                            }
                            else {
                                Button("Playlists"){
                                    withAnimation{
                                        self.libIndex=0
                                    }
                                }.font(.system(size: 17, weight: .bold))
                                .foregroundColor(.gray)
                                .transition(.slide)
                            }
                        }
                        
                        VStack{
                            if (self.libIndex==1){
                                Button("Artists"){
                                    withAnimation{
                                        self.libIndex=1
                                    }
                                }.font(.system(size: 17, weight: .bold))
                                Rectangle()
                                    .frame(width: 65, height: 3)
                                    .foregroundColor(.green)
                            }
                            else {
                                Button("Artists"){
                                    withAnimation{
                                        self.libIndex=1
                                    }
                                }.font(.system(size: 17, weight: .bold))
                                .foregroundColor(.gray)
                            }
                        }
                        VStack{
                            
                            if (self.libIndex==2){
                                Button("Albums"){
                                    withAnimation{
                                        self.libIndex=2
                                    }
                                }.font(.system(size: 17, weight: .bold))
                                Rectangle()
                                    .frame(width: 75, height: 3)
                                    .foregroundColor(.green)
                            }
                            
                            else {
                                Button("Albums"){
                                    withAnimation{
                                        self.libIndex=2
                                    }
                                }.font(.system(size: 17, weight: .bold))
                                .foregroundColor(.gray)
                            }
                        }
                        
                    }.foregroundColor(.white)
                    .padding(.bottom, 10)
                }
                else if (self.libIndex==3 || self.libIndex==4 || self.libIndex==5)
                {
                    HStack(alignment: .top, spacing: 30){
                        VStack(alignment: .center){
                            if (self.libIndex==3) {
                                Button("Episodes"){
                                    withAnimation{
                                        self.libIndex=3
                                    }
                                }.font(.system(size: 17, weight: .bold))
                                
                                Rectangle()
                                    .frame(width: 79, height: 3)
                                    .foregroundColor(.green)
                                    .transition(.slide)
                            }

    }
}

#Preview {
    LibraryView()
}
