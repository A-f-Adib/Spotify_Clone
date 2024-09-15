//
//  SearchView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 15/9/24.
//

import SwiftUI

func random()->Color {
    let r = Double.random(in: 0 ... 1)
    let g = Double.random(in: 0 ... 1)
    let b = Double.random(in: 0 ... 1)
    return Color(red: r, green: g, blue: b)
  }

let randcolor: Color = random()

struct SearchView: View {
    
    var mainplaylists: PlayList
    
    @State var srch: String = ""
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            LinearGradient(gradient: Gradient(colors: [.black]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading){
                    Text("Search")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 5)
                    
                    HStack {
                        Spacer(minLength: 0)
                        HStack (alignment: .center,
                                spacing: 10) {
                            Image(systemName: "magnifyingglass")
#Preview {
    SearchView()
}
