
import UIKit
import CoreData

class AddStudentInfo: UIViewController, UITextFieldDelegate{
    var collegeObj :CollegeInformation?
    
    @IBOutlet var StudentInformationTitleLabel: UILabel!
    
    
    @IBOutlet var name: UITextField!
    
    @IBOutlet var password: UITextField!
    
    
    @IBOutlet var submit: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func submitButtonPressed(_ sender: Any) {
        
            
            if name.text != "" && password.text != ""{
                
                let appDel: AppDelegate = UIApplication.shared.delegate as! AppDelegate
                let context1 = appDel.persistentContainer.viewContext
                let studentOb = NSEntityDescription.entity(forEntityName: "StudentsInformation", in: context1)
            let studentOb1 =   NSManagedObject(entity: studentOb!, insertInto: context1) as! StudentsInformation
                
                studentOb1.name = name.text!
                studentOb1.password = password.text!
             
                
                studentOb1.collegeInformation_rel = self.collegeObj
                self.collegeObj?.studentInformation_rel?.adding(studentOb1)

//                var _ : NSError? = nil
                do{
                    try context1.save()
                    
                    let otherAlert = UIAlertController(title: "Suceess", message: "Information is saved success fully", preferredStyle: .actionSheet)
                   
                    let printSomething = UIAlertAction(title: "Ok", style: .default) { _ in
                        print("We can run a block of code." )
                      
                        
                        
                        self.navigationController?.popViewController(animated: true)
                        
                    }
                   
                        // relate actions to controllers
                        otherAlert.addAction(printSomething)
                    
                    present(otherAlert, animated: true, completion: nil)
                    
                    
                }catch{
                    print("error while save data")
                    
                }
                
                
            }else{
                let otherAlert = UIAlertController(title: "Details", message: "Please Enter Valid Details.", preferredStyle: .actionSheet)

                let printSomething = UIAlertAction(title: "Ok", style: .default) { _ in
                    print("We can run a block of code." )
                }
                    // relate actions to controllers
                    otherAlert.addAction(printSomething)
                
                present(otherAlert, animated: true, completion: nil)
                
                
            }
        
            
        }
        
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool
        {
            textField.resignFirstResponder()
            
            return true
        }

        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if string == ""{
                return true
            }
            return true
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
