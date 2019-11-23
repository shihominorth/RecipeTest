//
//  TableViewController.swift
//  RecipeTest
//
//  Created by 北島　志帆美 on 2019-11-19.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

   
    
    let RecipeListCreator = recipeListCreator()
        
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
            
    //        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "recipeItem")
    //        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "creatorsProfie")

        

        tableView.rowHeight = 100.0
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 1
        } else if section == 1 {
            return RecipeListCreator.creatorRecipeLists.count
        } else {
            return 0
        }
    }
    
            
            
    // about deta the cell has
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 1 {
            let cell : recipeListCreatorItemTableViewCell =  (tableView.dequeueReusableCell(withIdentifier: "recipeItem") as? recipeListCreatorItemTableViewCell)!
            
//            if cell==nil {
//                cell = UITableViewCell(style: .default, reuseIdentifier: "recipeItem")
//            }
//
            
              let _ = RecipeListCreator.creatorRecipeLists[indexPath.row]
                  
//              if let label1000 = cell!.viewWithTag(1000) as? UILabel {
//                  label1000.text = RecipeListCreator.creatorRecipeLists[indexPath.row].textTest
//              }
            
            cell.lable.text =  RecipeListCreator.creatorRecipeLists[indexPath.row].textTest

              //tableView.deselectRow(at: indexPath, animated: true)
            //cell.backgroundColor = .green
            return cell
            
        } else {
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "creatorsProfie")
            
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "creatorsProfie")
            }
            
            //cell!.backgroundColor = .red

            
            return cell!
        }
        
        
        
    }
            
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            // tableView.cellForRow(at: indexPath) means it return the cell user tapped
            if let cell = tableView.cellForRow(at: indexPath) {
                let item = RecipeListCreator.creatorRecipeLists[indexPath.row]
                // tableView.deselectRow(at: indexPath, animated: true) stop highlighting the cell after user release finger.
                tableView.deselectRow(at: indexPath, animated: true)
            }
    }
            
            
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //RecipeListCreator.creatorRecipeLists.remove(at: indexPath.row)
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 400.0
        } else if indexPath.section == 1 {
            return 100.0
        }
        return 400.0
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "ali"
    }
            
//    func test(for cell:UITableViewCell, with item: recipeListCreatorItemTableViewCell) {
//        if let label = cell.viewWithTag(1000) as? UILabel {
//            label.text = item.textTest
//        }
//    }
            
    
}
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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


