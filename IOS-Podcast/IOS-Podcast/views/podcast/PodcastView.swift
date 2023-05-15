//
//  PodcastView.swift
//  IOS-Podcast
//
//  Created by etudiant on 14/05/2023.
//

import SwiftUI

struct PodcastView: View {
        
    var body: some View {
        
        NavigationStack {
            VStack{
                PodcastHeader(imageName: "podcast3")
                NavBar()
            }
        }
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView()
    }
}
