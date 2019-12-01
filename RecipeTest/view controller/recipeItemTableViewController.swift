//
//  recipeItemTableViewController.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-11-27.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit
import CHIPageControlJalapeno


class recipeItemTableViewController: UITableViewController {
    
    let identifiers = [1: "recipeMainCell", 2:"iconItem", 3:"creatorCellRecpipe", 4:"ingredients", 5: "how to cook"]

    var numImg = CGFloat(2.0) // depends on how many pictures user want to use, it is gonna change.

    
    
       
       override func viewDidLoad() {
           super.viewDidLoad()
        
        
           // Do any additional setup after loading the view.
       }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0, 1, 2, 3:
            return 1
        case 4:
            return 1 // this is for the number of ingredients
        case 5:
            return 1 // this shows how to cook.
        default:
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
              case 0:
                  return 500
              case 1:
                  return 50 // this is for the number of ingredients
              case 2:
                  return 78 // this shows how to cook.
              default:
                  return 44
              }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell : recipeMainTableViewCell =  (tableView.dequeueReusableCell(withIdentifier:"recipeMainCell") as? recipeMainTableViewCell)!
            
            //let _ = RecipeListCreator.creatorRecipeLists[indexPath.row]
            
            // 1枚目の画像
            let firstImageView = UIImageView(image: UIImage(named: "breakfast-450x310"))
            firstImageView.frame = CGRect(x: 0.0, y: 0.0, width: cell.scrollView.bounds.width, height: cell.scrollView.bounds.height)
            firstImageView.contentMode = UIView.ContentMode.scaleAspectFit
            cell.scrollView.addSubview(firstImageView)

                   // 2枚目の画像r
            let secondImageView = UIImageView(image: UIImage(named: "images"))
            secondImageView.frame = CGRect(x: cell.scrollView.bounds.width * 1.0, y: 0.0, width: cell.scrollView.bounds.width, height: cell.scrollView.bounds.height)
            secondImageView.contentMode = UIView.ContentMode.scaleAspectFit
                   
            cell.scrollView.addSubview(secondImageView)
            
            cell.pageControl
            
            return cell
                    
                }
        else if indexPath.section == 1 {
            let cell: iconItemTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "iconItem") as? iconItemTableViewCell)!
            
            return cell
            
        }
        else if indexPath.section == 2 {
            let cell: creatorCellRecpipeTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "creatorCellRecpipe") as? creatorCellRecpipeTableViewCell)!
            return cell
        }
        else if indexPath.section == 3 {
            let cell: IngredientsTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "ingredients") as? IngredientsTableViewCell)!
            return cell
        }
        else {
            let cell: HowToCookTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "how to cook") as? HowToCookTableViewCell)!
            return cell
        }
       
                
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
