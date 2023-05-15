//
//  Podcast.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import Foundation

public struct Podcast : Identifiable{
    
    public let id = UUID()
    
    public let imageName : String
    public let title : String
    public let mark : String
    public let category : String
    public let author : String
    
    public let episodes : [Episode]
    
}
