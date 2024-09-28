//
//  AlbumDetailView.swift
//  Spotify_Clone
//
//  Created by A.F. Adib on 29/9/24.
//

import SwiftUI

struct AlbumDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var albumdetails: AlbumDetails
    var albums: Album
    var btnBack : some View { Button(action: {
          
        self.presentationMode.wrappedValue.dismiss()
    }) {
        VStack(alignment: .trailing) {
            HStack {
                Image(systemName: "chevron.backward")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                Spacer(minLength: 330)
                Image(systemName: "heart")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                Image(systemName: "ellipsis")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(90))
            }
        }
    }
    }
    
    
         
    var body: some View {
        ZStack {
            Color.black
            LinearGradient(gradient: Gradient(stops: [.init(color: .red, location: 0.01), .init(color: darkGray, location: 0.3), .init(color: .black, location: 0.9)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Image(albums.img)
                        .padding()
                    Text(albums.album)
                        .foregroundColor(.white).bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 0.3)
                    Text("Album by \(albums.artist) • \(albums.year)")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                        .padding(.bottom, 7)
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("SHUFFLE PLAY")
                            .foregroundColor(.white).bold()
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.green)
                    .cornerRadius(60)
                    .padding(.vertical)
                    
                    HStack{
                        Text("Download")
                            .foregroundColor(.white)
                            .font(.headline)
                        Spacer()
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                        }
                    }
                    .padding(.vertical)
                    ForEach(0..<albums.songs){ i in
                        AlbumListView(albumdetails: isles[i])
                    }
                    .padding(.bottom, 3)
                    
                    HStack {
                        Text("\(albums.date), \(albums.year)")
                            .foregroundColor(.white).bold()
                        Spacer()
                    }
                    HStack {
                        Text("\(albums.songs) Songs • \(albums.time)")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack{
                        Image(albums.artistimg)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Text(albums.artist)
                            .foregroundColor(.white).bold()
                        Spacer()
                    }
                    
                    Text("You might also like")
                        .foregroundColor(.white).bold()
                    
                }.padding()
    }
}

#Preview {
    AlbumDetailView(albumdetails: isles[0], albums: albums[0])
}
