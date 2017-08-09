//
//  PokemonPresenter.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 07/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation

class PokemonPresenter: PokemonUserActionListener, PokemonInteractorOutput {

    weak var pokemonView: PokemonView?
    var pokemonInteractor: PokemonInteractorInput?
    var pokemonRouter: PokemonWireFrame?
 
    
    init(pokemonView: PokemonView) {
        self.pokemonView = pokemonView
        self.pokemonInteractor = PokemonInteractor(pokemonPresenter: self)
    }
    
    
    //MARK: - PokemonUserActionListener Implementation
    
    func loadPokedex(){
        pokemonView?.showLoadingScreen()
        pokemonInteractor?.requestPokedex()
    }
    
    func showPokemonDetail(forPokemon pokemon: Pokemon) {
        pokemonRouter?.openPokemonDetailScreen(from: pokemonView!, forPokemon: pokemon)
    }
    
    //MARK: - PokemonInteractorOutput Implementation
    
    func pokemonListDidLoad(_ pokemon: [Pokemon]){
        pokemonView?.showPokemonList(pokemon)
    }
    
    func onError() {
        pokemonView?.showErrorScreen()
    }
    
    
}
