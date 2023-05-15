//
//  PodcastView.swift
//  IOS-Podcast
//
//  Created by etudiant on 14/05/2023.
//

import SwiftUI

struct PodcastView: View {
        
    @State public var backGroundColor: Color = .white
    
    private let podcast:Podcast
    
    init(podcast:Podcast){
        self.podcast = podcast
    }
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                VStack{
                    backGroundColor.edgesIgnoringSafeArea(.top)
                        .frame(height: UIScreen.main.bounds.size.height/2)
                    Color.white
                }
                VStack{
                    ScrollView(.vertical){
                        VStack{
                            PodcastHeader(podcast: podcast, parent: self)
                            PodcastEpisodes()
                        }
                    }
                    NavBar()
                        .frame(height: 0)
                }
            }
        }
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView(podcast: Podcast(imageName: "podcast2", title: "le titre", mark: "4.5 (45)", category: "Humour · Tous les jours", author: "Fabien Olicard", episodes: [
            Episode(day:"MARDI", summary:"| testekjfhzlefhze zelkfhzkehf zlekfhzehfzieh zliehfziehf zlefzkehfkzf", duration: "00:06:10", title: "Le journal de la science")
    ]))
    }
}
