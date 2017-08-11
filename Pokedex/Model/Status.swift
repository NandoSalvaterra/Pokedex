//
//  Status.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 08/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation
import Gloss

class Status: Gloss.Decodable {
    
    var name: String?
    var url: String?
    var baseStatus: Int?
    var effort: Int?
    
    required init?(json: JSON) {
        self.name = "stat.name" <~~ json
        self.url = "stat.url" <~~ json
        self.baseStatus = "base_stat" <~~ json
        self.effort = "effort" <~~ json
    }
}
