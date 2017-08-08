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
        pokemonInteractor = PokemonInteractor()
    }
    
    
    //MARK: - PokemonUserActionListener Implementation
    
    func loadView(){
        pokemonView?.showLoadingScreen()
        pokemonInteractor?.loadPokemonList()
    }
    
    func showPokemonDetail(forPokemon pokemon: Pokemon) {
        pokemonRouter?.presentPokemonDetailScreen(from: pokemonView!, forPokemon: pokemon)
    }
    
    //MARK: - PokemonInteractorOutput Implementation
    
    func pokemonListDidLoad(_ pokemon: [Pokemon]){
        pokemonView?.showPokemonList(pokemon)
    }
    
    func onError() {
        pokemonView?.showErrorScreen()
    }
    
    
}
