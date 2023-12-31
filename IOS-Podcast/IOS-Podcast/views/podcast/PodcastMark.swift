//
//  PodcastMark.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct PodcastMark: View {
    
    private let mainColor : Color
    private let podcast : Podcast

    public init(mainColor:Color = .white,podcast:Podcast){
        self.mainColor = mainColor
        self.podcast = podcast
    }
    
    var body: some View {
        
        
        HStack{
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 15,height: 15)
            Text(podcast.mark + " · " + podcast.category)
            Spacer()
        }
        .foregroundColor(mainColor)
        .padding(.horizontal)
    }
}

struct PodcastMark_Previews: PreviewProvider {
    static var previews: some View {
        PodcastMark(mainColor:.blue,podcast: Stub.getOnePodcast())
    }
}
