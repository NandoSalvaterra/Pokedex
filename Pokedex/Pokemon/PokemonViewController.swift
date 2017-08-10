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
        pokemonPresenter?.loadPokedex()
 
        let view = Bundle.main.loadNibNamed("EmptyScreen", owner: self, options: nil)?.first as! UIView
        
    }
    
    //MARK: - PokemonView Implementation
    
    func showLoadingScreen() {
        
    }
    
    func hideLoadingScreen() {
        
    }
    
    func showPokemonList(_ pokemon: [Pokemon]) {
        print("caiu no controller agora so mostrar!")
    }
    
    func showEmptyScreen() {
        
    }
    
    func showErrorScreen() {
        
    }

}

