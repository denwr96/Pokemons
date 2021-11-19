//
//  DetailViewController.swift
//  PokemonCardsList
//
//  Created by deniss.lobacs on 19/11/2021.
//

import UIKit
import SDWebImage

class DetailViewController: UIViewController {
    
    var pokemon: Pokemon!

    @IBOutlet weak var pokeyImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var supertypeLabel: UILabel!
    @IBOutlet weak var subtypeLabel: UILabel!
    @IBOutlet weak var hpLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if pokemon != nil {
            self.pokeyImageView.sd_setImage(with: URL(string: pokemon.image), placeholderImage: UIImage(named: "pok.png"))
            nameLabel.text = pokemon.name
            supertypeLabel.text = pokemon.supertype
            subtypeLabel.text = pokemon.subtype
            hpLabel.text = pokemon.number
        }
    }


}
