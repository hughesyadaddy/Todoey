//
//  ViewController.swift
//  Todoey
//
//  Created by Alex on 1/15/18.
//  Copyright © 2018 Alex Hughes. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    //MARK - INSTANCE VARIABLES

    let itemArray = ["Find Mike", "Buy Eggos", "Destory Demogorgon"]
    
    
    //MARK - VIEW DID LOAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK - TABLEVIEW DATASOURCE METHODS
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    
    //MARK - TABLEVIEW DELEGATE METHODS
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    

}

