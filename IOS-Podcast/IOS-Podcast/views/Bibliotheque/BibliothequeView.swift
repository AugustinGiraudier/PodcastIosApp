//
//  BibliothequeView.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct BibliothequeView: View {
    
    private let podcasts:[Podcast]
    
    init(podcasts:[Podcast]){
        self.podcasts=podcasts
    }
    
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
        BibliothequeView(podcasts:Stub.getAllPodcasts())
    }
}
