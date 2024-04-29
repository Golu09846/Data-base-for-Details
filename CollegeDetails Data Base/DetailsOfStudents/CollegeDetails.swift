//
//  CollegeDetails.swift
//  DataBase
//
//  Created by STUDENT on 4/25/24.
//

import UIKit

class CollegeDetails: UIViewController {
    
    
    @IBOutlet var collegeDetails: UILabel!
    
    @IBOutlet var name: UILabel!
    
    @IBOutlet var password: UILabel!
       var object :CollegeInformation?
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.name.text = object?.name
        self.password.text = object?.password
    }
    
    
    @IBAction func StudentListButtonPressed(_ sender: Any) {
        let controller  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "StudentListingTable") as! StudentListingTable
        controller.collegeObj = self.object
        self.navigationController?.pushViewController(controller, animated: true)
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
