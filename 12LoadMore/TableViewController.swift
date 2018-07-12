//
//  TableViewController.swift
//  12LoadMore
//
//  Created by DungB96 on 2018/06/13.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var numbers = Array(1...20)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numbers.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = String(numbers[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lastItem = numbers.count - 1
        if indexPath.row == lastItem {
            loadMoreData()
        }
    }
    
    func loadMoreData(){
        
        let lastItem = numbers.last!
        let newNum = lastItem + 1
        numbers.append(newNum)
        
        tableView.reloadData()
    }
    
    
}
