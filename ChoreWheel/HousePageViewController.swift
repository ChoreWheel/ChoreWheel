//
//  HousePageViewController.swift
//  ChoreWheel
//
//  Created by Ethan Nguyen on 5/21/21.
//

import UIKit

class HousePageViewController: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet weak var roommateCells: UITableView!
        
    @IBOutlet weak var choreCells: UITableView!
    //insert data from parse server here
    let roommateData =  ["Name1", "Name2", "Name3"]
    let choreData = ["Chore1", "Chore2", "Chore3"]
    
    override func viewDidLoad() {
        roommateCells.register(UITableViewCell.self, forCellReuseIdentifier: "roommateData")
        roommateCells.delegate = self
        roommateCells.dataSource = self
        
        choreCells.register(UITableViewCell.self, forCellReuseIdentifier: "choreData")
        choreCells.delegate = self
        choreCells.dataSource = self
    }
    

    //when clicked, how should this work
    @IBAction func SendReminder(_ sender: Any) {
    }
    
    @IBAction func InviteRoommate(_ sender: Any) {
    }
}

extension HousePageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == roommateCells {
            return roommateData.count
        }
        return choreData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == roommateCells {
            let cell = roommateCells.dequeueReusableCell(withIdentifier: "roommateData", for: indexPath)
            cell.textLabel?.text = roommateData[indexPath.row].description
            return cell
        } else {
            let cell = choreCells.dequeueReusableCell(withIdentifier: "choreData", for: indexPath)
            cell.textLabel?.text = choreData[indexPath.row]
            return cell
        }
    }
}

/*
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == roommateCells {
            // you clicked the first table
            roommateCells.deselectRow(at: indexPath, animated: true)
        } else {
            // you clicked the second table
            choreCells.deselectRow(at: indexPath, animated: true)
        }
    }
}*/
