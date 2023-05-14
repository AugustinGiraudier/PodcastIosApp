//
//  topBar.swift
//  IOS-Podcast
//
//  Created by etudiant on 14/05/2023.
//

import SwiftUI

struct topBar: View {
    var body: some View {
        
        ZStack {
            //Color.clear // Fond transparent
            VStack{
                HStack {
                    Button(action: {
                        // Action à effectuer lors du clic sur le premier bouton
                    }) {
                        Image(systemName: "chevron.left") // Icône système
                            .foregroundColor(.white) // Couleur de l'icône
                            .padding(13) // Espacement interne du bouton
                            .background(Color.black.opacity(0.5)) // Fond noir avec opacité de 50%
                            .clipShape(Circle()) // Forme ronde
                    }
                    
                    Spacer() // Espacement flexible pour déplacer les boutons suivants à droite
                    
                    Button(action: {
                        // Action à effectuer lors du clic sur le deuxième bouton
                    }) {
                        Image(systemName: "arrow.down") // Icône système
                            .foregroundColor(.white) // Couleur de l'icône
                            .padding(12) // Espacement interne du bouton
                            .background(Color.black.opacity(0.5)) // Fond noir avec opacité de 50%
                            .clipShape(Circle()) // Forme ronde
                    }
                    
                    Button(action: {
                        // Action à effectuer lors du clic sur le troisième bouton
                    }) {
                        Image(systemName: "ellipsis") // Icône système
                            .foregroundColor(.white) // Couleur de l'icône
                            .padding(17) // Espacement interne du bouton
                            .background(Color.black.opacity(0.5)) // Fond noir avec opacité de 50%
                            .clipShape(Circle()) // Forme ronde
                    }
                }
                .padding(.horizontal,20) // Espacement extérieur des boutons
                .padding(.vertical, 0)
            }
            
        }
        
    }
        
}

struct topBar_Previews: PreviewProvider {
    static var previews: some View {
        topBar()
    }
}
