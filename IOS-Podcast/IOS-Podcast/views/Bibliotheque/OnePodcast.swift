//
//  OnePodcast.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct OnePodcast: View {
    
    private let podcast : Podcast
    private let imgSize : Double
    private let updateDay : String
    
    init(podcast:Podcast){
        self.podcast = podcast
        imgSize = (UIScreen.main.bounds.size.width/2) - 20
        updateDay = podcast.episodes[podcast.episodes.count-1].day.lowercased()
    }
    
    var body: some View {
        NavigationLink(destination: PodcastView(podcast:podcast)) {
            VStack (alignment: .leading){
                Image(podcast.imageName)
                    .resizable()
                    .frame(width: imgSize, height: imgSize)
                    .cornerRadius(10)
                Text(podcast.title)
                    .foregroundColor(Colors.textPrimary)
                    .lineLimit(1)
                    .truncationMode(.tail)
                Text("Mise à jour : " + updateDay)
                    .foregroundColor(.gray)
                    .font(.system(size:14))
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
        }
    }
}

struct OnePodcast_Previews: PreviewProvider {
    static var previews: some View {
        OnePodcast(podcast: Stub.getOnePodcast())
    }
}
