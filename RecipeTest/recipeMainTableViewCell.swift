//
//  recipeMainTableViewCell.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-11-28.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit

class recipeMainTableViewCell: UITableViewCell {
       
    @IBOutlet weak var imgRecipe: UIImageView!
    @IBOutlet weak var titleRecipeLabel: UILabel!
    @IBOutlet weak var explanationLabel: UILabel!
    
    
       var nameRecipe = ""
       var explaination = ""
       

       override func awakeFromNib() {
           super.awakeFromNib()
           // Initialization code
        titleRecipeLabel.text = "\(nameRecipe)"
        explanationLabel.text = "\(explaination)"
       }

       override func setSelected(_ selected: Bool, animated: Bool) {
           super.setSelected(selected, animated: animated)

           // Configure the view for the selected state
       }


}
