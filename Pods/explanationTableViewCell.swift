//
//  explanationTableViewCell.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-12-06.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit

class explanationTableViewCell: UITableViewCell {

    @IBOutlet weak var explanationLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        explanationLabel.text = ""
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
