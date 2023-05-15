//
//  BibliothequeView.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct BibliothequeView: View {
    
    let podcasts = [
        Podcast(imageName: "podcast1", title: "le titre", mark: "4.5 (45)", category: "Humour · Tous les jours", episodes: [
                Episode(day:"MARDI", summary:"| testekjfhzlefhze zelkfhzkehf zlekfhzehfzieh zliehfziehf zlefzkehfkzf", duration: "00:06:10", title: "Le journal de la science")
        ]),
        Podcast(imageName: "podcast2", title: "le titre", mark: "4.5 (45)", category: "Humour · Tous les jours", episodes: [
                Episode(day:"MARDI", summary:"| testekjfhzlefhze zelkfhzkehf zlekfhzehfzieh zliehfziehf zlefzkehfkzf", duration: "00:06:10", title: "Le journal de la science")
        ]),
        Podcast(imageName: "podcast3", title: "le titre", mark: "4.5 (45)", category: "Humour · Tous les jours", episodes: [
                Episode(day:"MARDI", summary:"| testekjfhzlefhze zelkfhzkehf zlekfhzehfzieh zliehfziehf zlefzkehfkzf", duration: "00:06:10", title: "Le journal de la science")
        ])
    ]
    
    
    var body: some View {
        NavigationStack {
            ZStack{
                
                Color.white
                
                VStack{
                    ScrollView(.vertical){
                        PodcastList(podcasts: podcasts)
                    }
                    NavBar()
                        .frame(height: 0)
                }
                .navigationTitle("Podcasts")
                .toolbar {TopBar()}
            }
            
        }
        
    }
    
}

struct BibliothequeView_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeView()
    }
}
