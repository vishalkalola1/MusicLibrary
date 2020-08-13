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
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading){
                    HStack{
                        GeometryReader { geo in
                            Image(self.musicdetailsModelView.music.imageName).resizable()
                                .frame(width: geo.size.width, height: CGFloat.calcImageAspectRatio(self.musicdetailsModelView.music.imageName))
                        }
                    }.frame(width: nil, height: CGFloat.calcImageAspectRatio(self.musicdetailsModelView.music.imageName), alignment: .center)
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
                }
            }
        }
        .navigationBarTitle("Music Details",displayMode: .inline)
    }
}

struct MusicDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MusicDetailsView(musicdetailsModelView: MusicDetailsModelView.init(music: Music.init(title: "Test", description: "Test", artist: "Test", release: 2019, imageName: "image1")))
    }
}

