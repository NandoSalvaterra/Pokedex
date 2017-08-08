//
//  PokemonInteractor.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 07/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation

class PokemonInteractor: PokemonInteractorInput {
  
    
    var pokemonPresenter: PokemonInteractorOutput

    init(pokemonPresenter: PokemonInteractorOutput) {
        self.pokemonPresenter = pokemonPresenter
    }
    
    func requestPokemonList() {
        PokemonAPIService.instance.requestPokemonList().responseJSON { (response) in
            print(response)
        }
    }
}
