//
//  EpisodeRow.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct EpisodeRow: View {
    
    private let episode : Episode
    
    init(episode:Episode){
        self.episode = episode
    }
    
    var body: some View {
        
        VStack{
            
            Text(episode.day)
                .bold()
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 12))
            Text(episode.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(episode.summary)
                .foregroundColor(.gray)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(3)
                .truncationMode(.tail)
            
            HStack{
                Button(action: {
                    // Action à effectuer lors du clic sur le deuxième bouton
                }) {
                    Image(systemName: "play.fill") // Icône système
                        .foregroundColor(Colors.secondary) // Couleur de l'icône
                        .padding(10) // Espacement interne du bouton
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle()) // Forme ronde
                }
                Text(episode.duration)
                    .foregroundColor(Colors.secondary)
                
                Spacer()
            }
            
            
        }
        .padding(.horizontal)
        
    }
}

struct EpisodeRow_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeRow(episode:Stub.getOnEpisode())
    }
}
