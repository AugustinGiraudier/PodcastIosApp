//
//  ContentView.swift
//  IOS-Podcast
//
//  Created by etudiant on 10/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            // Barre du haut
            HStack{
                Text("")
            }
            
            // partie artiste
            ZStack{
                Rectangle()
                    .foregroundColor(.red)
                
                VStack {
                    Image("podcast1")
                        .resizable()
                        .frame(width: 200,height: 200)
                        .cornerRadius(10)
                        .shadow(radius: 20)
                        .padding(.bottom,10)
                    
                    Text("L'Hippocampe")
                        .bold()
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    
                    Text("Fabien Olicard")
                        .foregroundColor(.white)
                    
                    Button(action: {
                                // Action à effectuer lors du clic sur le bouton
                    }) {
                        HStack {
                            Image(systemName: "play.fill")
                            Text("Derniers episodes")
                                .bold()
                        }
                        .foregroundColor(.black)
                        .padding(.horizontal,50)
                        .padding(.vertical,17)
                        .background(.white)
                        .cornerRadius(12)
                        .font(.system(size: 17))
                    }

                    
                    Spacer()
                }
                .padding()
            }
            
            
            //
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
