//
//  UIImageView+DownloadImage.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 11/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import UIKit


extension UIImageView {
    
    func loadImage(url: String) {
        PokemonAPIService.instance.requestPokemonImage(forUrl: url).responseImage { (response) in
            self.image = response.result.value
        }
    }  
}
