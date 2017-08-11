//
//  PokemonInteractor.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 07/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation

class PokemonInteractor: PokemonInteractorInput {
    
    var index = 0
    var pokemonList = [Pokemon]()
    var pokemonPresenter: PokemonInteractorOutput
    
    
    init(pokemonPresenter: PokemonInteractorOutput) {
        self.pokemonPresenter = pokemonPresenter
    }
    
    func requestPokedex() {
        PokemonAPIService.instance.requestPokedexList().responseJSON { (response) in
            
            switch(response.result) {
                
            case .success:
                if let pokedexList = PokedexList(json: response.result.value as! [String : Any]){
                    self.getPokemonDetails(forPokedex: pokedexList)
                }
                break
                
            case .failure:
                self.pokemonPresenter.onError()
                break
            }
            
            //FIXME: - Remove this block later.
            print(response)
            print(Thread.current)
            print(Thread.isMainThread)
        }
    }
    
    private func getPokemonDetails(forPokedex pokedexList: PokedexList) {
        PokemonAPIService.instance.requestPokemonDetail(forUrl: (pokedexList.pokedexResults?[index].url)!).responseJSON(completionHandler: { (response) in
            
            switch(response.result) {
                
            case .success:
                let pokemon  = Pokemon(json: response.result.value as! [String : Any])
                self.index += 1
                self.pokemonList.append(pokemon!)
                print(pokemon!.name!)
                if(self.index < (pokedexList.pokedexResults?.count)!) {
                    self.getPokemonDetails(forPokedex: pokedexList)
                } else {
                    self.pokemonPresenter.pokemonListDidLoad(self.pokemonList)
                    break
                }
                
            case .failure:
                print ("failure")
                self.pokemonPresenter.onError()
                
                break
            }
        })
    }
    
}
