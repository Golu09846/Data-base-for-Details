import UIKit
import  CoreData
class InformationOfStudentsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   
    
    var collegeListArr :[CollegeStudentsInformation] = []
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return   collegeListArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InformationForCollege") as! InformationForCollege
        cell.name.text = self.collegeListArr[indexPath.row].name
        cell.pass.text = self.collegeListArr[indexPath.row].password
        return cell
    }
    

    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
       fetchData()
    }
    func fetchData()
        {
            let appDel: AppDelegate = UIApplication.shared.delegate as! AppDelegate
            let context1 = appDel.persistentContainer.viewContext
            
            
            print("Fetching Data..")
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "CollegeStudentsInformation")
            request.returnsObjectsAsFaults = false
            do {
              
                let result = try context1.fetch(request)
               /* for data in result as! [College] {
                    print(data.name)
                    print(data.address)
                }
                */
                
                self.collegeListArr = result as! [CollegeStudentsInformation]
                self.table.reloadData()
                
            } catch {
                print("Fetching data Failed")
            }
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
            let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CollegeDetails")
            as! CollegeDetails
            
            
            
            controller.object =
                      self.collegeListArr[indexPath.row]
            self.navigationController?.pushViewController(controller, animated: true)
        }

    
    @IBAction func addCollegePressed(_ sender: Any) {
        let controller  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CollegeInformation")
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
