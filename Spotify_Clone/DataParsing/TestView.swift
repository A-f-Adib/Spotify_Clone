//
//  TestView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 1/10/24.
//

import SwiftUI

struct TestView: View {
   
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea([.all])
                NavigationLink(destination: ContentView()) {
                    Text("push")
                }
            }
           
        }

    }
}

#Preview {
    TestView()
}
