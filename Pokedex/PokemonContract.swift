//
//  PokemonContract.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 04/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation

protocol PokemonView: class {
    
    var pokemonPresenter: PokemonUserActionListener? { get set }
    
    func showLoadingScreen()
    func showPokemonList(_ pokemon: Array<Pokemon>)
    func showEmptyScreen()
    func showErrorScreen()
}


protocol PokemonUserActionListener: class {
    
    var pokemonView: PokemonView? { get set }
    var pokemonInteractor: PokemonInteractorInput? { get set }
    var pokemonWireFrame: PokemonRouter? { get set }
    
    func loadView()
    func showPokemonDetail(forPokemon pokemon: Pokemon)
}


protocol PokemonInteractorOutput {

    func pokemonListDidLoad(_ pokemon: [Pokemon])
    func onError()
}


protocol PokemonInteractorInput: class {
    
    var pokemonPresenter: PokemonUserActionListener? { get set }
    
    func loadPokemonList()
}

protocol PokemonRouter: class {
    
}
