//
//  RefigeratorTableViewCell.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-12-09.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit

class RefigeratorTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameIngredientLabel: UILabel!
    @IBOutlet weak var amountIngredientLabel: UILabel!
    
    var nameIngredient = ""
    var amountIngredient = ""
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
