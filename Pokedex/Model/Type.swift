//
//  Type.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 08/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation
import Gloss

class Type: Gloss.Decodable {
    
    var name: String?
    var url: String?
    var slot: Int?
    
    required init?(json: JSON) {
        self.name = "type.name" <~~ json
        self.url = "type.url" <~~ json
        self.slot = "slot" <~~ json
    }
    
}
