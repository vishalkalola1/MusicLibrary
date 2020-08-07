//
//  ContentView.swift
//  MusicLibrary
//
//  Created by Vishal on 8/5/20.
//  Copyright © 2020 Andes Infotech. All rights reserved.
//

import SwiftUI

struct MusicListView: View {
    
    @ObservedObject var music = MusicListViewModel()
    init() {
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().barTintColor = UIColor.init(red: 252.0/255.0, green: 135.0/255.0, blue: 60.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UITableView.appearance().allowsSelection = false
        UITableViewCell.appearance().selectionStyle = .none
    }
    
    var body: some View {
        NavigationView {
        
            List(music.musiclist) { objectMusic in
                VStack(alignment: .leading,spacing: 10.0){
                    MusicListCell(music: objectMusic)
                    NavigationLink(destination: MusicDetailsView(musicdetailsModelView: MusicDetailsModelView(music: objectMusic))) {
                        EmptyView()
                    }.frame(width: 0)
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                    .background(Color.white)
                    .cornerRadius(10.0)
                    .clipped()
                    .shadow(color: Color.gray, radius: 3.0, x: 0, y: 0)
            }.onAppear{
                UITableView.appearance().separatorStyle = .none
            }
            .navigationBarTitle("Musics",displayMode: .inline)
        }
    }
}

struct MusicListView_Previews: PreviewProvider {
    static var previews: some View {
        MusicListView()
    }
}

