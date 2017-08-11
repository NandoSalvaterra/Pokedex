//
//  PokemonListResult.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 09/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation
import Gloss

class PokedexList: Gloss.Decodable {
    
    var count: Int?
    var nextPage: String?
    var pokedexResults: [PokedexItem]?
    
    required init?(json: JSON) {
        self.count = "count" <~~ json
        self.nextPage = "next" <~~ json
        self.pokedexResults = "results" <~~ json
    }
}
