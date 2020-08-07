//
//  MusicDetailsView.swift
//  MusicLibrary
//
//  Created by Vishal on 8/6/20.
//  Copyright © 2020 Andes Infotech. All rights reserved.
//

import SwiftUI

struct MusicDetailsView: View {
    
    var musicdetailsModelView : MusicDetailsModelView
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading){
                HStack(alignment: .center){
                    Spacer()
                    GeometryReader { geo in
                        Image(self.musicdetailsModelView.music.imageName).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geo.size.width, height: 250)
                    }
                    Spacer()
                }.frame(width: nil, height: 220, alignment: .center).clipped()
                VStack(alignment: .leading){
                    CustomText(string: musicdetailsModelView.music.title ).font(Font.system(size: 20.0, weight: .bold, design: .default))
                    CustomText(string: self.musicdetailsModelView.music.description)
                    HStack{
                        CustomText(string: "Release: ").font(Font.system(size: 17.0, weight: .bold, design: .default))
                        CustomText(string: "\(self.musicdetailsModelView.music.release)")
                    }
                    HStack{
                        CustomText(string: "Artist: ").font(Font.system(size: 17.0, weight: .bold, design: .default))
                        CustomText(string: self.musicdetailsModelView.music.artist)
                    }
                }.padding()
                Spacer()
            }.frame(minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .topLeading)
        }
        .navigationBarTitle("Music Details",displayMode: .inline)
    }
}

//struct MusicDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        MusicDetailsView(music: Music(title: "Test", description: "Test", artist: "Test", release: 2019, imageName: "image1"))
//    }
//}
