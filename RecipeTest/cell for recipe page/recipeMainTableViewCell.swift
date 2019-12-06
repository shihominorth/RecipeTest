//
//  recipeMainTableViewCell.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-11-28.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit
import CHIPageControl


class recipeMainTableViewCell: UITableViewCell {
       
    @IBOutlet weak var heightForLabel: NSLayoutConstraint!
    
    @IBOutlet weak var scrollView: UIScrollView!
    //@IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var pageControl: CHIBasePageControl!
    
    
    var numImg = CGFloat(2.0) 
    
       
       

       override func awakeFromNib() {
           super.awakeFromNib()
           // Initialization code
        
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width * numImg, height: scrollView.bounds.height)
        scrollView.isPagingEnabled = true

        pageControl.tintColor = .orange
        
       }

        
        
       

       override func setSelected(_ selected: Bool, animated: Bool) {
           super.setSelected(selected, animated: animated)

           // Configure the view for the selected state
       }
    
    


}
