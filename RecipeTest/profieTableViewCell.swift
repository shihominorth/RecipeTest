//
//  profieTableViewCell.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-11-22.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit

class profieTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    imgView.frame = CGRect(x: 50, y: 150, width: 300, height: 300)
        
    // 角を丸くする
    self.imgView.layer.cornerRadius = 300 * 0.5
    self.imgView.clipsToBounds = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
