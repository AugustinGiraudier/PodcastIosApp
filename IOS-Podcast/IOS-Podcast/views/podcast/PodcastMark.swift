//
//  PodcastMark.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct PodcastMark: View {
    
    private let mainColor : Color

    public init(mainColor:Color){
        self.mainColor = mainColor
    }
    
    var body: some View {
        
        
        HStack{
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 15,height: 15)
            Text("(45) · Humour · Tous les jours")
            Spacer()
        }
        .foregroundColor(mainColor)
        .padding(.horizontal)
    }
}

struct PodcastMark_Previews: PreviewProvider {
    static var previews: some View {
        PodcastMark(mainColor:.blue)
    }
}
