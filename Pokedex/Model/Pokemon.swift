//
//  Pokemon.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 04/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation
import Gloss

class Pokemon: Decodable {
    
    var pokedexNumber: Int?
    var name: String?
    var height: Int?
    var weight: Int?
    var moves: [Move]?
    var sprites: [String : String]?
    var abilities: [Ability]?
    var status : [Status]?
    var baseExperience: Int?
    var types: [Type]?
    
    
   required init?(json: JSON) {
        self.pokedexNumber = "id" <~~ json
        self.name = "name" <~~ json
        self.height = "height" <~~ json
        self.weight = "weight" <~~ json
        //TODO: - Refacotor Moves Model
        self.moves = "moves.move" <~~ json
    }
}
