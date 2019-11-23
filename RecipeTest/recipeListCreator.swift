//
//  recipeListCreator.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-11-19.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import Foundation


class recipeListCreator {
    var creatorRecipeLists = [recipeListCreatorItemTableViewCell]()
    
    init() {
        let row0Item = recipeListCreatorItemTableViewCell()
        let row1Item = recipeListCreatorItemTableViewCell()
        let row2Item = recipeListCreatorItemTableViewCell()
        
        row0Item.textTest = "Mako"
        row1Item.textTest = "Risa"
        row2Item.textTest = "Usshi"
        
        creatorRecipeLists.append(row0Item)
        creatorRecipeLists.append(row1Item)
        creatorRecipeLists.append(row2Item)
    }
    
//    func newToDo() -> recipeListCreatorItemTableViewCell {
//        let item = recipeListCreatorItemTableViewCell()
//        item.textTest = "11: 30 PM"
//        creatorRecipeLists.append(item)
//        return item
//    }
//    
    
}
