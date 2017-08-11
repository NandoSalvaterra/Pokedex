//
//  Ability.swift
//  Pokedex Production
//
//  Created by Luiz Fernando Salvaterra on 08/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation
import Gloss

class Ability: Gloss.Decodable {

    var name: String?
    var url: String?
    var hidden: Bool?
    var slot: Int?
    
    required init?(json: JSON) {
        self.name = "ability.name" <~~ json
        self.url = "ability.url" <~~ json
        self.hidden = "hidden" <~~ json
        self.slot = "slot" <~~ json
    }
}
