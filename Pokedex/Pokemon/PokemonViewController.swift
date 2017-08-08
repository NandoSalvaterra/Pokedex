//
//  ViewController.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 02/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import UIKit

class PokemonViewController: UIViewController, PokemonView {

    var pokemonPresenter: PokemonUserActionListener?  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonPresenter = PokemonPresenter(pokemonView: self)
      
    }
    
    //MARK: - PokemonView Implementation
    
    func showLoadingScreen() {
        
    }
    
    func hideLoadingScreen() {
        
    }
    
    func showPokemonList(_ pokemon: Array<Pokemon>) {
        
    }
    
    func showEmptyScreen() {
        
    }
    
    func showErrorScreen() {
        
    }

}

