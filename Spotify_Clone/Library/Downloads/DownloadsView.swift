//
//  DownloadsView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 21/9/24.
//

import SwiftUI

struct DownloadsView: View {
    
    var body: some View {
        
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .center){
                Text("No downloads yet")
                    .font(.system(size: 25)).bold()
                    .foregroundColor(.white)
                
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
                Button("BROWSE") {
                    
                }
                .padding([.top, .bottom], 10)
                .padding([.leading, .trailing], 25)
                .font(.system(size: 13, weight: .semibold))
                .foregroundColor(.black)
                .background(Color.white)
                .cornerRadius(15)
                
            }
        }
    }
}

#Preview {
    DownloadsView()
}
