//
//  Music.swift
//  MusicLibrary
//
//  Created by Vishal on 8/5/20.
//  Copyright © 2020 Andes Infotech. All rights reserved.
//

import Foundation

struct Music: Identifiable {
    var id: UUID = UUID()
    var title: String
    var description: String
    var artist: String
    var release: Int
    var imageName: String
}
