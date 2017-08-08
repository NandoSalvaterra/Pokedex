//
//  TestClass.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 08/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation
import Gloss

class TestClass: Decodable {
    
    var name: String?
    var url: String?
    
    required init?(json: JSON) {
        self.name = "name" <~~ json
        self.url = "url" <~~ json
    }
    
}
