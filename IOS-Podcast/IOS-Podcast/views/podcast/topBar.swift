//
//  topBar.swift
//  IOS-Podcast
//
//  Created by etudiant on 14/05/2023.
//

import SwiftUI

struct topBar: View {
    
    @Environment(\.dismiss) private var dismiss
    
    private let bgOpacity : Int
    private let barText : String
    private let showArrowBtn : Bool
    private let btnBgColor : Color
    private let iconColor : Color
    
    init(   showBackGround : Bool = false,
            text:String = "",
            showArrow:Bool = true,
            btnBgColor:Color = Color.black.opacity(0.5),
            iconColor:Color = .white){
        bgOpacity = showBackGround ? 1 : 0
        barText = text
        self.showArrowBtn = showArrow
        self.btnBgColor = btnBgColor
        self.iconColor = iconColor
        
    }
    
    var body: some View {
        
        ZStack {
            //Color.clear // Fond transparent
            VStack{
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.left") // Icône système
                            .frame(width: 40,height: 40)
                            .foregroundColor(iconColor) // Couleur de l'icône
                            .padding(1) // Espacement interne du bouton
                            .background(btnBgColor) // Fond noir avec opacité de 50%
                            .clipShape(Circle()) // Forme ronde
                    }
                    
                    Spacer()
                    
                    Text(barText)
                        .font(.system(size:22))
                        .bold()
                        .foregroundColor(Colors.secondary)
                    
                    Spacer() // Espacement flexible pour déplacer les boutons suivants à droite
                    
                    if showArrowBtn{
                        Button(action: {
                            // Action à effectuer lors du clic sur le deuxième bouton
                        }) {
                            Image(systemName: "arrow.down") // Icône système
                                .frame(width: 40,height: 40)
                                .foregroundColor(iconColor) // Couleur de l'icône
                                .padding(1) // Espacement interne du bouton
                                .background(btnBgColor) // Fond noir avec opacité de 50%
                                .clipShape(Circle()) // Forme ronde
                        }
                    }
                    
                    Button(action: {
                        // Action à effectuer lors du clic sur le troisième bouton
                    }) {
                        Image(systemName: "ellipsis") // Icône système
                            .frame(width: 40,height: 40)
                            .foregroundColor(iconColor) // Couleur de l'icône
                            .padding(1) // Espacement interne du bouton
                            .background(btnBgColor) // Fond noir avec opacité de 50%
                            .clipShape(Circle()) // Forme ronde
                    }
                }
                .padding(.horizontal,20) // Espacement extérieur des boutons
                .padding(.vertical, 0)
            }
            
        }
        .padding(.vertical, 7)
        .background(Colors.primary.opacity(Double(bgOpacity)))
        
    }
        
}

struct topBar_Previews: PreviewProvider {
    static var previews: some View {
        topBar(showBackGround: false)
    }
}
