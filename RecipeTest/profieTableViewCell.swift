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
    
    // this is called when it is initialized.
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //self.imgView.frame = CGRect(x: 50, y: 150, width: 300, height: 300)
        //self.imgView.layer.cornerRadius = 300 * 0.5
        
//        imgView.layer.borderWidth = 1
        // masksToBounds can cut couner over the border.
//        imgView.layer.masksToBounds = false
//        imgView.layer.cornerRadius = 112.5
//        self.imgView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
