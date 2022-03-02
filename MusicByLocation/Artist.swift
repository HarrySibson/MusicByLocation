//
//  Artist.swift
//  MusicByLocation
//
//  Created by Harry Sibson on 02/03/2022.
//

import Foundation

struct Artist: Codable {
    var name: String
    
    private enum CodingKeys: String, CodingKey {
        case name = "artistName"
    }
}
