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
        //find house id in db
        let houseName = houseidTextField.text! as String
        
        let query = PFQuery(className: "House")
        query.whereKey("name", equalTo: houseName)
        /*
        query.findObjectsInBackground { (house: [PFObject]?, error: Error?) in
            if let error = error {
                // The request failed
                print(error.localizedDescription)
            } else {
                // comments now contains the comments for myPost
                print(house["name"])
            }
        }
        */
        
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
