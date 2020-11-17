//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Marc Jacques on 11/17/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var planet: Planet? {
        didSet {
//            Anytime the plantes value changes run this code:
            updateViews()
        }
    }
    
    func updateViews() {
        imageView.image = planet?.image
        nameLabel.text = planet?.name
    }
}
