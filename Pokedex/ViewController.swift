//
//  ViewController.swift
//  Pokedex
//
//  Created by Luiz Fernando Salvaterra on 02/08/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let plist =  Bundle.main.infoDictionary
        
        let valor = plist?["API Key"] as! String
        
        print(valor)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

