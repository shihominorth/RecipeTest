//
//  numOfCreatorhasTableViewCell.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-12-12.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit

class NumOfCreatorhasTableViewCell: UITableViewCell {

    @IBOutlet weak var numOfPostedButton: UIButton!
    @IBOutlet weak var numOfFollowingButton: UIButton!
    @IBOutlet weak var numOfFollowedButton: UIButton!
    
    
    var numOfPosted = 0
    var numOfFollowing = 0
    var numOfFollowed = 0
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        numOfPostedButton.titleLabel?.numberOfLines = 0
        numOfPostedButton.setTitle("\(numOfPosted) \nPosted", for: .normal)
        numOfPostedButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        numOfFollowingButton.titleLabel?.numberOfLines = 0
        numOfFollowingButton.setTitle("\(numOfFollowing) \nFollowing", for: .normal)
        numOfFollowingButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        numOfFollowedButton.titleLabel?.numberOfLines = 0
        numOfFollowedButton.setTitle("\(numOfFollowed) \nFollowed", for: .normal)
        numOfFollowedButton.titleLabel?.textAlignment = NSTextAlignment.center

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
