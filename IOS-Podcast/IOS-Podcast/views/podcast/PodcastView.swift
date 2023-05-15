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
                    Colors.primary
                }
                VStack{
                    ScrollView(.vertical){
                        VStack{
                            PodcastHeader(podcast: podcast, parent: self)
                            PodcastEpisodes(episodes: podcast.episodes)
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
        PodcastView(podcast: Stub.getOnePodcast())
    }
}
