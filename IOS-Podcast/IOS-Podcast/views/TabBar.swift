//
//  TabBar.swift
//  IOS-Podcast
//
//  Created by etudiant on 16/05/2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            
            BibliothequeView(podcasts: Stub.getAllPodcasts())
                .tabItem({
                    VStack {
                        Image(systemName: "play.circle.fill")
                            .imageScale(.large)
                        Text("Écouter")
                            .font(.caption)
                    }
                })
            BibliothequeView(podcasts: Stub.getAllPodcasts())
                .tabItem({
                    VStack {
                        Image(systemName: "safari.fill")
                            .imageScale(.large)
                        Text("Explorer")
                            .font(.caption)
                    }
                })
            BibliothequeView(podcasts: Stub.getAllPodcasts())
                .tabItem({
                    VStack {
                        Image(systemName: "book.fill")
                            .imageScale(.large)
                        Text("Bibliothèque")
                            .font(.caption)
                    }                })
            BibliothequeView(podcasts: Stub.getAllPodcasts())
                .tabItem({
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.large)
                        Text("Recherche")
                            .font(.caption)
                    }
                })
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
