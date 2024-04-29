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
       var object :CollegeStudentsInformation?
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.name.text = object?.name
        self.password.text = object?.password
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
