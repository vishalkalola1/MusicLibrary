//
//  MusicListCell.swift
//  MusicLibrary
//
//  Created by Vishal on 8/6/20.
//  Copyright © 2020 Andes Infotech. All rights reserved.
//

import SwiftUI

struct MusicListCell: View {
    
    var music : Music
    
    var body: some View {
        HStack(alignment:.top, spacing: 10.0){
            VStack(alignment: .leading){
                CustomImage(imagename: music.imageName).padding(.top)
            }
            VStack(alignment: .leading){
                CustomText(string: music.title).font(Font.system(size: 20.0, weight: .bold, design: .default))
                CustomText(string: music.description).lineLimit(2)
                HStack{
                    CustomText(string: "Release: ").font(Font.system(size: 17.0, weight: .bold, design: .default))
                    CustomText(string: "\(music.release)")
                }
                HStack{
                    CustomText(string: "Artist: ").font(Font.system(size: 17.0, weight: .bold, design: .default))
                    CustomText(string: music.artist)
                }
            }
        }.padding(.all,8.0)
    }
}

struct MusicListCell_Previews: PreviewProvider {
    static var previews: some View {
        MusicListCell(music: Music(title: "XXX", description: "XXX", artist: "XXX", release: 2019, imageName: "XXX"))
    }
}

struct CustomText: View {
    
    var string : String
    
    var body : some View {
        Text(string).padding(.bottom,5.0).foregroundColor(Color.black)
    }
    
}

struct CustomImage: View {
    
    var imagename : String
    
    var body: some View{
        Image(imagename).resizable().frame(width: 100.0, height: 100.0).clipShape(Circle())
    }
}
