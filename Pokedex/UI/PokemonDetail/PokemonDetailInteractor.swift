//
//  PokemonDetailInteractor.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 07/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation

class PokemonDetailInteractor: PokemonDetailInteractorInput {
   
    var pokemonDetailPresenter: PokemonDetailInteractorOutput?
    
    init(pokemonDetailPresenter: PokemonDetailInteractorOutput) {
        self.pokemonDetailPresenter = pokemonDetailPresenter
    }
    
    func requestPokemonDetail(id: Int) {
    
    }
    
    
}
