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
        
        HStack {
            Spacer(minLength: 0)
            
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
            
                .padding([.top,.bottom], 2)
                .padding(.leading, 5)
                .background(Color.white, alignment: .center)
                .cornerRadius(5)
                Spacer(minLength: 0)
        }.padding(.bottom, 5)
    }
}

#Preview {
    SearchBox()
}
