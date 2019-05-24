//
//  MasterTableViewController.swift
//  SearchBar_1
//
//  Created by Duc on 4/1/19.
//  Copyright © 2019 Duc. All rights reserved.
//

import UIKit

struct Singer {
    let catogery: String
    let name: String
    let imageView: UIImage!
}

class MasterTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    var singers = [
        Singer(catogery: "US/UK", name: "Justin Bieber", imageView: UIImage(named: "jb")),
        Singer(catogery: "US/UK", name: "Adam Levine", imageView: UIImage(named: "adam")),
        Singer(catogery: "K-POP", name: "PSY", imageView: UIImage(named: "psy")),
        Singer(catogery: "KPOP", name: "G-Dragon", imageView: UIImage(named: "gd")),
        Singer(catogery: "VPOP", name: "Sơn Tùng MT-P", imageView: UIImage(named: "tung")),
        Singer(catogery: "VPOP", name: "Đen Vâu", imageView: UIImage(named: "den")),
        Singer(catogery: "VPOP", name: "Quách Văn Thơm", imageView: UIImage(named: "thom")),
        Singer(catogery: "VPOP", name: "Vũ", imageView: UIImage(named: "vu"))
        
    ]
    
    
    
    var filterSinger = [Singer]()
    var searchViewController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set up for search
        tableView.rowHeight = 120
        searchViewController.searchResultsUpdater = self
        searchViewController.obscuresBackgroundDuringPresentation = false
        searchViewController.searchBar.placeholder = "Search Here"
        navigationItem.searchController = searchViewController
        definesPresentationContext = true

        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return singers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        let singer = singers[indexPath.row]
        
        cell.nameSingerLabel.text = singer.name
        cell.typeSingerLabel.text = singer.catogery
        cell.imageSinger.image = singer.imageView
        

        return cell
    }
    
    // MARK: - Actions
    @IBAction func btnDOne(_ sender: Any) {
        
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

extension MasterTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        //
    }
}
