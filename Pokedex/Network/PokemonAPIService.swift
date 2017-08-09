//
//  PokemonAPIService.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 04/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation
import Alamofire

class PokemonAPIService: SessionManager {
    
    static let instance = PokemonAPIService()
    
    var baseURL: String {
        return  Bundle.main.infoDictionary?["API URL"] as! String
    }
    
    private init() {
        super.init()
    }
    
    func requestPokedexList() -> DataRequest {
        let requestURL = "\(baseURL)pokemon"
        return self.request(requestURL)
   }
    
    func requestPokemonDetail(forUrl url: String) -> DataRequest {
         return self.request(url)
    }
}
