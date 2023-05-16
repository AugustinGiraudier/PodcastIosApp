//
//  TopBar2.swift
//  IOS-Podcast
//
//  Created by etudiant on 16/05/2023.
//

import Foundation
import SwiftUI

struct TopBar2 : ToolbarContent{
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some ToolbarContent{
        
        ToolbarItemGroup(placement: .navigationBarLeading) {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.left") // Icône système
                    .frame(width: 15,height: 15)
                    .foregroundColor(.white) // Couleur de l'icône
                    .padding(10) // Espacement interne du bouton
                    .background(.black.opacity(0.5)) // Fond noir avec opacité de 50%
                    .clipShape(Circle()) // Forme ronde
            }
        }
        
        ToolbarItemGroup(placement: .primaryAction) {
            Button(action: {
                // Action à effectuer lors du clic sur le deuxième bouton
            }) {
                Image(systemName: "arrow.down") // Icône système
                    .frame(width: 15,height: 15)
                    .foregroundColor(.white) // Couleur de l'icône
                    .padding(10) // Espacement interne du bouton
                    .background(.black.opacity(0.5)) // Fond noir avec opacité de 50%
                    .clipShape(Circle()) // Forme ronde
            }
            Button(action: {
                // Action à effectuer lors du clic sur le troisième bouton
            }) {
                Image(systemName: "ellipsis") // Icône système
                    .frame(width: 15,height: 15)
                    .foregroundColor(.white) // Couleur de l'icône
                    .padding(10) // Espacement interne du bouton
                    .background(.black.opacity(0.5)) // Fond noir avec opacité de 50%
                    .clipShape(Circle()) // Forme ronde
            }
        }
    }
    
    
}
