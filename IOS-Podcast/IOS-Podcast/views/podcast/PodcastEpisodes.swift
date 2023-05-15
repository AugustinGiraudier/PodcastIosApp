//
//  PodcastEpisodes.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct PodcastEpisodes: View {
    
    
    
    private let episodes : [Episode]
    
    init(episodes:[Episode]){
        self.episodes = episodes
    }

    
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
                
                ForEach(episodes) { episode in
                    EpisodeRow(episode:episode)
                    ListSeparator()
                }
                
            }
        }
        .padding(.bottom,40)
        
        
        
    }
}

struct PodcastEpisodes_Previews: PreviewProvider {
    static var previews: some View {
        PodcastEpisodes(episodes: Stub.getManyEpisodes())
    }
}
