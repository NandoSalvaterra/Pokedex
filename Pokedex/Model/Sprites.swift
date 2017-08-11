//
//  Sprites.swift
//  Pokedex Production
//
//  Created by Luiz Fernando Salvaterra on 09/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation
import Gloss

class Sprites: Gloss.Decodable {
    
    var backFemale: String?
    var backShinyFemale: String?
    var backDefault: String?
    var backShiny: String?
    var frontFemale: String?
    var frontShinyFemale: String?
    var frontDefault: String?
    var frontShiny: String?
    
    required init?(json: JSON) {
        self.backFemale = "back_female" <~~ json
        self.backShinyFemale = "back_shiny_female" <~~ json
        self.backDefault = "back_default" <~~ json
        self.backShiny = "back_shiny" <~~ json
        self.frontFemale = "front_female" <~~ json
        self.frontShinyFemale = "front_shiny_female" <~~ json
        self.frontDefault = "front_default" <~~ json
        self.frontShiny = "front_shiny" <~~ json
    }
}
