//
//  Episode.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import Foundation

public struct Episode : Identifiable{
    
    public let id = UUID()
    
    
    public let day : String
    public let summary : String
    public let duration : String
    public let title : String
    
}
