//
//  ViewController.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 02/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import UIKit

class PokemonViewController: UIViewController, PokemonView, UICollectionViewDataSource {
 
    

    var pokemonPresenter: PokemonUserActionListener?
    var pokemonList: [Pokemon]?
    @IBOutlet weak var pokemonCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonPresenter = PokemonPresenter(pokemonView: self)
        pokemonPresenter?.loadPokedex()
 
        //let view = Bundle.main.loadNibNamed("EmptyScreen", owner: self, options: nil)?.first as! UIView
        
    }
    
    //MARK: - PokemonView Implementation
    
    func showLoadingScreen() {
        
    }
    
    func hideLoadingScreen() {
        
    }
    
    //TODO: - Refazer assinatura do metodo
    func showPokemonList(_ pokemon: [Pokemon]) {
       self.pokemonList = pokemon
       pokemonCollectionView.reloadData()
    }
    
    func showEmptyScreen() {
        
    }
    
    func showErrorScreen() {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let pokemonList = pokemonList {
            return pokemonList.count
        }  else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokemonCell", for: indexPath) as! PokemonCollectionViewCell
        cell.bind(pokemon: pokemonList![indexPath.row])
        return cell
    }

}

