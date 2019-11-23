//
//  CreatorPageViewController.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-11-19.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit

class CreatorPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.imageView?.layer.cornerRadius = self.imageView.frame.size.width/2
        self.imageView?.clipsToBounds = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
