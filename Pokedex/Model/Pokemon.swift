//
//  Pokemon.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 04/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation
import Gloss

class Pokemon: Gloss.Decodable {
    
    var pokedexNumber: Int?
    var name: String?
    var height: Int?
    var weight: Int?
    var moves: [Move]?
    var sprites: Sprites?
    var abilities: [Ability]?
    var status : [Status]?
    var baseExperience: Int?
    var types: [Type]?
    
   required init?(json: JSON) {
        self.pokedexNumber = "id" <~~ json
        self.name = "name" <~~ json
        self.height = "height" <~~ json
        self.weight = "weight" <~~ json
        self.moves = "moves" <~~ json
        self.sprites = "sprites" <~~ json
        self.abilities = "abilities" <~~ json
        self.status = "stats" <~~ json
        self.baseExperience = "base_experience" <~~ json
        self.types = "types" <~~ json
    }
}
