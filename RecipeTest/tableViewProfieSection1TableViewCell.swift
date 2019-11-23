//
//  tableViewProfieSection1TableViewCell.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-11-22.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit

class tableViewProfieSection1TableViewCell: UITableViewCell {
    
    @IBOutlet var profieImage: UIImageView!
    
    profieImage.frame = CGRect(x: 50, y: 150, width: 225, height: 225)
    ////        // 角を丸くする
    profieImage.layer.cornerRadius = ImageView.frame.size.width/2
            ImageView.clipsToBounds = true

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
