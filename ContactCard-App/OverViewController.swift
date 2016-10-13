//
//  OverViewController.swift
//  ContactCard-App
//
//  Created by Thomas Woerdeman on 11/10/2016.
//  Copyright © 2016 Thomas Woerdeman. All rights reserved.
//

import UIKit
import Alamofire

class OverViewController: UITableViewController {
    var persons : [Person] = []
    
    @IBOutlet var personTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Populate Person Array
        fillPersonArray()
        
        
        

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }
    
    func fillPersonArray(){
        let p1 = Person(foreName: "Thomas", lastName: "Woerdeman", imageUrl: "Stringetje")
        persons.append(p1)
        let p2 = Person(foreName: "Frank", lastName: "Molengraaf", imageUrl: "Stringetje2")
        persons.append(p2)
        
        
//        let url = "https://randomuser.me/api"
//        let parameters = ["results" : "5"]
//        Alamofire.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default).responseJSON { response in
//            if let json = response.result.value as? Dictionary<String, Any> {
//                let foreName =  json["results"][0] as! String
//                print(foreName)
//
//            }
//       }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! OverviewTableViewCell

        let row = indexPath.row
        	
        cell.nameLabel?.text = persons[row].foreName! + " " + persons[row].lastName!
        cell.imageView?.backgroundColor = UIColor.blue
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailViewSegue" {
            
            // Get destination controller
            if let destination = segue.destination as? DetailViewController {
                
                // Get selected row and lookup selected person in array
                if let indexPath = self.tableView.indexPathForSelectedRow {
                    
                    // Pass person to detailed view
                    let person = persons[(indexPath as NSIndexPath).row]
                    destination.person = person
                    
                }
            }
            
        }    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
