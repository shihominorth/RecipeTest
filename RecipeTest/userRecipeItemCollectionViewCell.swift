//
//  userRecipeItemCollectionViewCell.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2020-01-06.
//  Copyright © 2020 北島　志帆美. All rights reserved.
//

import UIKit

class userRecipeItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage! {
        didSet {
            self.imageView.image = image
            
            self.setNeedsLayout()
        }
    }
}
