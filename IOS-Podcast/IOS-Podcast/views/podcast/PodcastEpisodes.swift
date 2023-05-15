//
//  PodcastEpisodes.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct PodcastEpisodes: View {
    
    
    
    private let episodes = [
        Episode(day:"MARDI", summary:"| testekjfhzlefhze zelkfhzkehf zlekfhzehfzieh zliehfziehf zlefzkehfkzf", duration: "00:06:10", title: "Le journal de la science")
    ]

    
    var body: some View {
        
        ZStack{
            Colors.primary
            VStack{
                
                HStack{
                    Text("Épisodes")
                        .bold()
                        .font(.system(size: 25))
                    Image(systemName:"chevron.down")
                        .foregroundColor(Colors.secondary)
                    Spacer()
                    Text("tout voir")
                        .foregroundColor(Colors.secondary)
                }
                .padding(.horizontal)
                .padding(.top, 20)
                
                ListSeparator()
                EpisodeRow(episode:episodes[0])
                ListSeparator()
                EpisodeRow(episode:episodes[0])
                ListSeparator()
                
                .scrollDisabled(true)
            }
        }
        
        
        
    }
}

struct PodcastEpisodes_Previews: PreviewProvider {
    static var previews: some View {
        PodcastEpisodes()
    }
}
