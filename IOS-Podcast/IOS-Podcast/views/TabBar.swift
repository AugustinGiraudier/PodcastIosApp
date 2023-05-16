//
//  TabBar.swift
//  IOS-Podcast
//
//  Created by etudiant on 16/05/2023.
//

import SwiftUI

struct TabBar: View {
    
    @State private var selection = 3
    
    var body: some View {
        TabView(selection: $selection){
            
            BibliothequeView(podcasts: Stub.getAllPodcasts())
                .tabItem({
                    VStack {
                        Image(systemName: "play.circle.fill")
                            .imageScale(.large)
                        Text("Écouter")
                            .font(.caption)
                    }
                })
                .tag(1)
            BibliothequeView(podcasts: Stub.getAllPodcasts())
                .tabItem({
                    VStack {
                        Image(systemName: "safari.fill")
                            .imageScale(.large)
                        Text("Explorer")
                            .font(.caption)
                    }
                })
                .tag(2)
            BibliothequeView(podcasts: Stub.getAllPodcasts())
                .tabItem({
                    VStack {
                        Image(systemName: "book.fill")
                            .imageScale(.large)
                        Text("Bibliothèque")
                            .font(.caption)
                    }
                })
                .tag(3)
            BibliothequeView(podcasts: Stub.getAllPodcasts())
                .tabItem({
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.large)
                        Text("Recherche")
                            .font(.caption)
                    }
                })
                .tag(4)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
