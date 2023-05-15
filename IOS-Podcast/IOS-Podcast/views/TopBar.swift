//
//  TopBar.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import Foundation
import SwiftUI

struct TopBar : ToolbarContent{
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some ToolbarContent{
        
        ToolbarItemGroup(placement: .navigationBarLeading) {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.left") // Icône système
                    .frame(width: 40,height: 40)
                    .foregroundColor(Colors.secondary) // Couleur de l'icône
            }
            Text("Bibliothèque")
                .padding(.leading,-17)
                .foregroundColor(Colors.secondary)
        }
        ToolbarItemGroup(placement: .primaryAction) {
            Button(action: {
                // Action à effectuer lors du clic sur le troisième bouton
            }) {
                Image(systemName: "ellipsis") // Icône système
                    .frame(width: 40,height: 40)
                    .foregroundColor(Colors.secondary) // Couleur de l'icône
                    .padding(1) // Espacement interne du bouton
            }
        }
    }
    
    
}
