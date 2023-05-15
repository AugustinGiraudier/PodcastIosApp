//
//  OnePodcast.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct OnePodcast: View {
    
    private let podcast : Podcast
    private let imgSize : Double
    private let updateDay : String
    
    init(podcast:Podcast){
        self.podcast = podcast
        imgSize = (UIScreen.main.bounds.size.width/2) - 20
        updateDay = podcast.episodes[podcast.episodes.count-1].day.lowercased()
    }
    
    var body: some View {
        NavigationLink(destination: PodcastView()) {
            VStack (alignment: .leading){
                Image(podcast.imageName)
                    .resizable()
                    .frame(width: imgSize, height: imgSize)
                    .cornerRadius(10)
                Text(podcast.title)
                    .foregroundColor(.black)
                Text("Mise à jour : " + updateDay)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct OnePodcast_Previews: PreviewProvider {
    static var previews: some View {
        OnePodcast(podcast: Podcast(imageName: "podcast1", title: "le titre", mark: "4.5 (45)", category: "Humour · Tous les jours", episodes: [
            Episode(day:"MARDI", summary:"| testekjfhzlefhze zelkfhzkehf zlekfhzehfzieh zliehfziehf zlefzkehfkzf", duration: "00:06:10", title: "Le journal de la science")
    ]))
    }
}
