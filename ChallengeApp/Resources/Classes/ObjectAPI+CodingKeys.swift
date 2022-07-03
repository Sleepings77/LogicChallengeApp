//
//  ObjectAPI+CodingKeys.swift
//  GlobalLogicChallenge
//
//  Created by Matias on 01/07/2022.
//

import Foundation

final class ObjectAPI : Codable {
    
    var title       : String?
    var description : String?
    var image       : String?
    
    enum CodingKeys: String, CodingKey {
        case title       = "title"
        case description = "description"
        case image       = "image"
    }
    
}
