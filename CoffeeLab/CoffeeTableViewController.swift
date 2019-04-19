//
//  CoffeeTableViewController.swift
//  CoffeeLab
//
//  Created by SungIn on 2019. 4. 18..
//  Copyright © 2019년 SungIn. All rights reserved.
//

import UIKit

class CoffeeTableViewController: UITableViewController {
    var sampleData = coffeeSubcript
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView(frame: .zero)
        self.tableView.dataSource = self
        
        self.sampleData.append(Coffee.init(name: "ice americano", price: "4500", coffeeImg: "Unknown"))
        self.sampleData.append(Coffee.init(name: "hot americano", price: "4500", coffeeImg: "Unknown"))
        self.sampleData.append(Coffee.init(name: "ice americano Large", price: "4500", coffeeImg: "Unknown2"))
        self.sampleData.append(Coffee.init(name: "hot americano Large", price: "4500", coffeeImg: "Unknown2"))
        self.sampleData.append(Coffee.init(name: "ice americano Venti", price: "4500", coffeeImg: "Unknown"))
        self.sampleData.append(Coffee.init(name: "ice americano", price: "4500", coffeeImg: "Unknown"))
        self.sampleData.append(Coffee.init(name: "hot americano", price: "4500", coffeeImg: "Unknown"))
        self.sampleData.append(Coffee.init(name: "ice americano Large", price: "4500", coffeeImg: "Unknown2"))
        self.sampleData.append(Coffee.init(name: "hot americano Large", price: "4500", coffeeImg: "Unknown2"))
        self.sampleData.append(Coffee.init(name: "ice americano Venti", price: "4500", coffeeImg: "Unknown"))
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.sampleData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sample = self.sampleData[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoffeeCell", for: indexPath) as! CoffeeTableViewCell
        cell.coffeeImg.image = UIImage(named: sample.coffeeImg)
        cell.nameLabel.text = sample.name
        cell.priceLabel.text = sample.price
        
        return cell
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
