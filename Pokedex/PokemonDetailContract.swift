//
//  PokemonDetailContract.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 07/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation

protocol PokemonDetailView: class {
    
    var pokemonDetailPresenter: PokemonDetailUserActionListener? { get set }
    
    func showPokemonDetail (forPokemon pokemon: Pokemon)
}


protocol PokemonDetailUserActionListener: class {
    var pokemonDetailView: PokemonDetailView? { get set }
    var pokemonDetailRouter: PokemonDetailWireFrame? { get set }
    var pokemon: Pokemon? { get set }
    
    
    func loadPokemonDetail()

}


protocol PokemonDetailInteractorOutput: class {
    
}


protocol PokemonDetailInteractorInput: class {
    
    var pokemonDetailPresenter:  PokemonDetailInteractorOutput? { get set }
    
    func requestPokemonDetail(id: Int)
    
    
}


protocol PokemonDetailWireFrame: class {
    
    
}

