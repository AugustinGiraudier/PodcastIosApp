//
//  PodcastList.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI


struct PodcastList: View {
    
    private let podcasts:[Podcast]
    
    init(podcasts:[Podcast]){
        self.podcasts = podcasts
    }
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                ForEach(podcasts) { podcast in
                    OnePodcast(podcast: podcast)
                }
        }
        .padding(.top,16)
    }
}

struct PodcastList_Previews: PreviewProvider {
    static var previews: some View {
        PodcastList(podcasts: Stub.getAllPodcasts())
    }
}
