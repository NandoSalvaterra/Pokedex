//
//  PokemonDetailPresenter.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 07/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation

class PokemonDetailPresenter:  PokemonDetailUserActionListener, PokemonDetailInteractorOutput {
    
    var pokemonDetailView: PokemonDetailView?
    var pokemonDetailRouter: PokemonDetailWireFrame?
    var pokemon: Pokemon?
    
    func loadPokemonDetail() {
        
    }
    
    
}
