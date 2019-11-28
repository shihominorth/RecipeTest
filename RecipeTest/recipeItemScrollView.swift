//
//  recipeImageScrollView.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-11-27.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit

class recipeItemScrollView: UIView {

    @IBAction func handlePan(_ recognizer: UIPanGestureRecognizer){
        
        // we need traanslation. translation method tells the distance that the user’s finger has moved from the original touch location.
        let translation = recognizer.translation(in: self)
        // bounds describes the view’s location and size.
        // view and the contents that should be scrolled need to be same position.
        bounds.origin.y = bounds.origin.y - translation.y
        
        // Changing the translation value resets the velocity(速度） of the pan.
        recognizer.setTranslation(CGPoint.zero, in: self)
    }

}
