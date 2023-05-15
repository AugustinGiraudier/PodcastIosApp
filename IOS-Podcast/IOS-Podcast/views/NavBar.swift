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
            Colors.primary
            VStack {
                Spacer()
                // Barre de navigation
                Divider()
                HStack {
                    NavigationLink(destination: BibliothequeView(podcasts:Stub.getAllPodcasts())) {
                        VStack {
                            Image(systemName: "play.circle.fill")
                                .imageScale(.large)
                            Text("Écouter")
                                .font(.caption)
                        }
                    }
                        .navigationBarBackButtonHidden(true)
                    Spacer()
                    NavigationLink(destination: BibliothequeView(podcasts:Stub.getAllPodcasts())) {
                        VStack {
                            Image(systemName: "safari.fill")
                                .imageScale(.large)
                            Text("Explorer")
                                .font(.caption)
                        }
                    }
                        .navigationBarBackButtonHidden(true)
                    Spacer()
                    NavigationLink(destination: BibliothequeView(podcasts:Stub.getAllPodcasts())) {
                        VStack {
                            Image(systemName: "book.fill")
                                .imageScale(.large)
                            Text("Bibliothèque")
                                .font(.caption)
                        }
                    }
                        .navigationBarBackButtonHidden(true)
                        .foregroundColor(Colors.secondary)
                    Spacer()
                    NavigationLink(destination: BibliothequeView(podcasts:Stub.getAllPodcasts())) {
                        VStack {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.large)
                            Text("Recherche")
                                .font(.caption)
                        }
                    }
                        .navigationBarBackButtonHidden(true)
                }
                .padding(.horizontal,25)
                .padding(.bottom, 8)
                .foregroundColor(.gray)
            }
        }.ignoresSafeArea()
           
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
