//
//  PokemonCollectionViewCell.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 10/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import UIKit

class PokemonCollectionViewCell : UICollectionViewCell {
    
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var pokemonNumber: UILabel!
    @IBOutlet weak var pokemonType : UILabel!
    
    private var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      self.layer.cornerRadius = 2.0
    }
    
    func bind(pokemon: Pokemon) {
        self.pokemon = pokemon
        pokemonName.text = pokemon.name?.capitalized
        pokemonImage.loadImage(url: (pokemon.sprites?.frontDefault)!)
        pokemonNumber.text = "\(pokemon.pokedexNumber!)"
        pokemonType.text =  pokemon.types![0].name
        
    }
}
