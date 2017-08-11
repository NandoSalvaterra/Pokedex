//
//  PokemonWireFrame.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 07/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import UIKit

class PokemonRouter: PokemonWireFrame {


    
    func openPokemonDetailScreen(from view: PokemonView, forPokemon pokemon: Pokemon) {
        
        let pokemonDetailViewController = PokemonDetailViewController()
    
        
      let pokemonViewController  = view as! UIViewController
        
        pokemonViewController.navigationController?.pushViewController(pokemonDetailViewController, animated: true)
        
    }
}
