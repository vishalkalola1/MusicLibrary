//
//  MusicDetailsModelView.swift
//  MusicLibrary
//
//  Created by Vishal on 8/7/20.
//  Copyright © 2020 Andes Infotech. All rights reserved.
//

import Foundation


class MusicDetailsModelView : ObservableObject {
    @Published var music : Music
    
    init(music:Music) {
        self.music = music
    }
}
