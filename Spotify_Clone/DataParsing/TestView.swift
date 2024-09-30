//
//  TestView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 1/10/24.
//

import SwiftUI

struct TestView: View {
   
    var body: some View {
        
        ZStack{
        Color.black
            .ignoresSafeArea()
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    TestView()
}
