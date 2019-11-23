//
//  testViewController.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-11-18.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit

class testCreatorPageViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        //        // 角を丸くする
        self.ImageView?.layer.cornerRadius = self.ImageView.frame.size.width/2
        self.ImageView?.clipsToBounds = true

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
