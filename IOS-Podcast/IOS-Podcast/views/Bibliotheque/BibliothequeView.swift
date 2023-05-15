//
//  BibliothequeView.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct BibliothequeView: View {
    
    var body: some View {
        NavigationStack {
            ZStack{
                
                Color.white
                
                VStack{
                    ScrollView(.vertical){
                        VStack{
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(height: 1200)
                        }
                    }
                    NavBar()
                        .frame(height: 0)
                }
                .navigationTitle("Podcasts")
                .toolbar {TopBar()}
            }
            
        }
        
    }
    
}

struct BibliothequeView_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeView()
    }
}
