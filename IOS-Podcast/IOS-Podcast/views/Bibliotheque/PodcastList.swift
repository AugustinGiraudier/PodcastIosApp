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
        PodcastList(podcasts: [
            Podcast(imageName: "podcast1", title: "le titre", mark: "4.5 (45)", category: "Humour · Tous les jours", episodes: [
                    Episode(day:"MARDI", summary:"| testekjfhzlefhze zelkfhzkehf zlekfhzehfzieh zliehfziehf zlefzkehfkzf", duration: "00:06:10", title: "Le journal de la science")
            ]),
            Podcast(imageName: "podcast2", title: "le titre", mark: "4.5 (45)", category: "Humour · Tous les jours", episodes: [
                    Episode(day:"MARDI", summary:"| testekjfhzlefhze zelkfhzkehf zlekfhzehfzieh zliehfziehf zlefzkehfkzf", duration: "00:06:10", title: "Le journal de la science")
            ]),
            Podcast(imageName: "podcast3", title: "le titre", mark: "4.5 (45)", category: "Humour · Tous les jours", episodes: [
                    Episode(day:"MARDI", summary:"| testekjfhzlefhze zelkfhzkehf zlekfhzehfzieh zliehfziehf zlefzkehfkzf", duration: "00:06:10", title: "Le journal de la science")
            ])
        ])
    }
}
