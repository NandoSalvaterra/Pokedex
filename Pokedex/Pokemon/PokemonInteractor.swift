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
            
            switch(response.result) {
             
            case .success:
                
                let teste = response.result.value as! [String: Any]
                
                
                let arrayParseado = [TestClass].from(jsonArray: teste["results"] as! Array<[String: Any]>)
         
                break
                
            case .failure(let error):
                self.pokemonPresenter.onError()
                break
            }
            
            //FIXME: - Remove this block later.
            print(response)
            print(Thread.current)
            print(Thread.isMainThread)
        }
    }
}
