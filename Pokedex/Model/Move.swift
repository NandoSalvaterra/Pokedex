//
//  Move.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 08/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation
import  Gloss

class Move: Gloss.Decodable {
    
    var name: String?
    var url: String?
    var levelLearned: Int?
    
    required init?(json: JSON) {
        self.name = "move.name" <~~ json
        self.url = "move.url" <~~ json
        self.levelLearned = "level_learned_at" <~~ json
    }
}
