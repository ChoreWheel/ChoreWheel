//
//  JoinHouseViewController.swift
//  ChoreWheel
//
//  Created by Kelly Lin on 5/15/21.
//

import UIKit
import Parse

class JoinHouseViewController: UIViewController {

    @IBOutlet weak var houseidTextField: UITextField!
    //enter code to join the house
    //each house has unique house id
    @IBAction func onCreate(_ sender: Any) {
        let house = PFObject(className:"House")
        let users = [PFUser.current()]
        
        house["name"] = houseidTextField.text
        house["housemates"] = users
        house["uuid"] = UUID().uuidString
        house.saveInBackground { (succeeded, error)  in
            if (succeeded) {
                print("saved")
            } else {
                print("error saving")
            }
        }
        
        var currentUser = PFUser.current()
        currentUser?["house"] = houseidTextField.text
        
    }
    
    @IBAction func onJoin(_ sender: Any) {
        //get id
        let id = houseidTextField.text! as String
        let fakeUser = PFUser()
        fakeUser.username = "test1"
        fakeUser.email = "test1@gmail.com"
        fakeUser.password = "12345678"
        let query = PFQuery(className: "House")
        query.includeKey("housemates")
        query.whereKey("uuid", equalTo: id)
        
        //get the list of PFObjects with the id, take the first thing in the list
        query.findObjectsInBackground { (house: [PFObject]?, error: Error?) in
            if let error = error {
                // The request failed
                print(error.localizedDescription)
            } else {
                
                
                guard let houses = house else {return}
                let house = houses[0]
               
                var housemates = house["housemates"] as! [PFUser]
                housemates.append(fakeUser)
          
                //save housemates to db
                
                
                // comments now contains the comments for myPost
                //print(house["name"])
            }
        }
        
        
        //update housemates field in db
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
