//
//  userRecipeItemTableViewCell.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2020-01-06.
//  Copyright © 2020 北島　志帆美. All rights reserved.
//

import UIKit

class userRecipeItemTableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet{
            collectionView.dataSource = self as! UICollectionViewDataSource
            collectionView.delegate = self as! UICollectionViewDelegate
        }
    }
    
}

extension userRecipeItemTableViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "recipeItemForUser", for: indexPath) as? userRecipeItemCollectionViewCell)!
        
//        cell.image.size.width =
       
       return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
       
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       return 1
   }
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
       return 1
   }
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = (self.frame.width - 2) / 3
    
       return CGSize(width: width, height: width)
   }
}

