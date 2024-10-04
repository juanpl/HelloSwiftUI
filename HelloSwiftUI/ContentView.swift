//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Juan Pablo Lasprilla Correa on 4/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20){
            Image("ironMan")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            
            AsyncImage(url: URL(string: "https://static.vecteezy.com/system/resources/thumbnails/030/032/289/small_2x/iron-man-mask-portrait-logo-tattoo-poster-pixel-art-illustration-voxel-graphic-photo.jpg"))
            { image in
                image.resizable()
            } placeholder: {
                Text("Downloading ...")
            }

            
            Text("First line")
                .foregroundStyle(.cyan)
                .font(.title)
                .padding([.top], 20)
            Text("Second line")
                .foregroundStyle(.green)
            Text("Thrid Line")
            HStack{
                Text("Left")
                Text("Right")
                    .fontWeight(.heavy)
            }
        }.foregroundStyle(.orange)
            .padding()
    }
}

#Preview {
    ContentView()
}
