//
//  PodcastView.swift
//  IOS-Podcast
//
//  Created by etudiant on 14/05/2023.
//

import SwiftUI

struct PodcastView: View {
        
    @State public var backGroundColor: Color = .white
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                VStack{
                    backGroundColor.edgesIgnoringSafeArea(.top)
                        .frame(height: 300)
                    Color.white
                }
                VStack{
                    ScrollView(.vertical){
                        VStack{
                            PodcastHeader(imageName: "podcast3", parent: self)
                            PodcastEpisodes()
                        }
                        
                    }
                    NavBar()
                        .frame(height: 0)
                }
            }
        }
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView()
    }
}
