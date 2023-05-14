//
//  NavBar.swift
//  IOS-Podcast
//
//  Created by etudiant on 14/05/2023.
//

import SwiftUI
import UIKit

struct NavBar: View {
    
    var body: some View {
        
        ZStack{
            Colors.primary.edgesIgnoringSafeArea(.all)
            VStack {
                // Contenu de la vue principale
                
                Spacer()
                
                // Barre de navigation
                Divider()
                HStack {
                    NavigationLink(destination: PodcastView()) {
                        VStack {
                            Image(systemName: "play.circle.fill")
                                .imageScale(.large)
                            Text("Écouter")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    NavigationLink(destination: PodcastView()) {
                        VStack {
                            Image(systemName: "safari.fill")
                                .imageScale(.large)
                            Text("Explorer")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    NavigationLink(destination: PodcastView()) {
                        VStack {
                            Image(systemName: "book.fill")
                                .imageScale(.large)
                            Text("Bibliothèque")
                                .font(.caption)
                        }
                    }
                        .foregroundColor(Colors.secondary)
                    Spacer()
                    NavigationLink(destination: PodcastView()) {
                        VStack {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.large)
                            Text("Recherche")
                                .font(.caption)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 8)
                .foregroundColor(.gray)
            }
        }
           
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
