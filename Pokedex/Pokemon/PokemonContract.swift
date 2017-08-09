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
    func hideLoadingScreen()
    func showPokemonList(_ pokemon: [Pokemon])
    func showEmptyScreen()
    func showErrorScreen()
}


protocol PokemonUserActionListener: class {
    
    weak var pokemonView: PokemonView? { get set }
    var pokemonInteractor: PokemonInteractorInput? { get set }
    var pokemonRouter: PokemonWireFrame? { get set }
    
    func loadPokedex()
    func showPokemonDetail(forPokemon pokemon: Pokemon)
}


protocol PokemonInteractorOutput {

    func pokemonListDidLoad(_ pokemon: [Pokemon])
    func onError()
}


protocol PokemonInteractorInput: class {
    
    var pokemonPresenter: PokemonInteractorOutput { get set }
    
    func requestPokedex()
}

protocol PokemonWireFrame: class {
    
    func openPokemonDetailScreen(from view: PokemonView, forPokemon pokemon: Pokemon)
}
